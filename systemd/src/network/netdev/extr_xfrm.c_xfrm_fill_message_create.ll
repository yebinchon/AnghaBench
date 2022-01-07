; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_xfrm.c_xfrm_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_xfrm.c_xfrm_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@IFLA_XFRM_LINK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not append IFLA_XFRM_LINK: %m\00", align 1
@IFLA_XFRM_IF_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not append IFLA_XFRM_IF_ID: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*)* @xfrm_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_fill_message_create(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %7, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_5__* @XFRM(i32* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %3
  %26 = phi i1 [ true, %3 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @IFLA_XFRM_LINK, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  %41 = call i32 @sd_netlink_message_append_u32(i32* %29, i32 %30, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @log_netdev_error_errno(i32* %45, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @IFLA_XFRM_IF_ID, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sd_netlink_message_append_u32(i32* %49, i32 %50, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @log_netdev_error_errno(i32* %58, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %57, %44
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @XFRM(i32*) #1

declare dso_local i32 @sd_netlink_message_append_u32(i32*, i32, i32) #1

declare dso_local i32 @log_netdev_error_errno(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
