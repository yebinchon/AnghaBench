; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_reconnect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }

@False = common dso_local global i32 0, align 4
@MCS_USERCHANNEL_BASE = common dso_local global i64 0, align 8
@MCS_GLOBAL_CHANNEL = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcs_reconnect(%struct.TYPE_12__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @iso_reconnect(%struct.TYPE_12__* %11, i8* %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @False, align 4
  store i32 %17, i32* %5, align 4
  br label %100

18:                                               ; preds = %4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @mcs_send_connect_initial(%struct.TYPE_12__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @mcs_recv_connect_response(%struct.TYPE_12__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %18
  br label %96

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = call i32 @mcs_send_edrq(%struct.TYPE_12__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = call i32 @mcs_send_aurq(%struct.TYPE_12__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29
  br label %96

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = call i32 @mcs_recv_aucf(%struct.TYPE_12__* %39, i64* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %96

45:                                               ; preds = %38
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MCS_USERCHANNEL_BASE, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @mcs_send_cjrq(%struct.TYPE_12__* %46, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = call i32 @mcs_recv_cjcf(%struct.TYPE_12__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54, %45
  br label %96

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = load i64, i64* @MCS_GLOBAL_CHANNEL, align 8
  %62 = call i32 @mcs_send_cjrq(%struct.TYPE_12__* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = call i32 @mcs_recv_cjcf(%struct.TYPE_12__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %59
  br label %96

69:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %91, %69
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = load i64, i64* @MCS_GLOBAL_CHANNEL, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = call i32 @mcs_send_cjrq(%struct.TYPE_12__* %77, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = call i32 @mcs_recv_cjcf(%struct.TYPE_12__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85, %76
  br label %96

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %70

94:                                               ; preds = %70
  %95 = load i32, i32* @True, align 4
  store i32 %95, i32* %5, align 4
  br label %100

96:                                               ; preds = %89, %68, %58, %44, %37, %28
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = call i32 @iso_disconnect(%struct.TYPE_12__* %97)
  %99 = load i32, i32* @False, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %94, %16
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @iso_reconnect(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @mcs_send_connect_initial(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mcs_recv_connect_response(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mcs_send_edrq(%struct.TYPE_12__*) #1

declare dso_local i32 @mcs_send_aurq(%struct.TYPE_12__*) #1

declare dso_local i32 @mcs_recv_aucf(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @mcs_send_cjrq(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @mcs_recv_cjcf(%struct.TYPE_12__*) #1

declare dso_local i32 @iso_disconnect(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
