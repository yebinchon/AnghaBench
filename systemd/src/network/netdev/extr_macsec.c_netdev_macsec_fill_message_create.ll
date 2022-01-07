; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_macsec.c_netdev_macsec_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_macsec.c_netdev_macsec_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@IFLA_MACSEC_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not append IFLA_MACSEC_PORT attribute: %m\00", align 1
@IFLA_MACSEC_ENCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Could not append IFLA_MACSEC_ENCRYPT attribute: %m\00", align 1
@IFLA_MACSEC_ENCODING_SA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Could not append IFLA_MACSEC_ENCODING_SA attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @netdev_macsec_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_macsec_fill_message_create(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_3__* @MACSEC(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @IFLA_MACSEC_PORT, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sd_netlink_message_append_u16(i32* %21, i32 %22, i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @log_netdev_error_errno(i32* %30, i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %68

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @IFLA_MACSEC_ENCRYPT, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @sd_netlink_message_append_u8(i32* %40, i32 %41, i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @log_netdev_error_errno(i32* %49, i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @IFLA_MACSEC_ENCODING_SA, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @sd_netlink_message_append_u8(i32* %54, i32 %55, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @log_netdev_error_errno(i32* %63, i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %62, %48, %29
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_3__* @MACSEC(i32*) #1

declare dso_local i32 @sd_netlink_message_append_u16(i32*, i32, i64) #1

declare dso_local i32 @log_netdev_error_errno(i32*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_append_u8(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
