.class public final Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    .local v0, rnd:Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    .line 33
    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 41
    instance-of v2, p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 43
    .local v0, config:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    iget-wide v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    iget-wide v4, v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 45
    .end local v0           #config:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :cond_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 70
    iget-wide v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    return-void
.end method
