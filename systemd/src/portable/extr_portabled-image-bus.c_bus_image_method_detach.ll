; ModuleID = '/home/carl/AnghaBench/systemd/src/portable/extr_portabled-image-bus.c_bus_image_method_detach.c'
source_filename = "/home/carl/AnghaBench/systemd/src/portable/extr_portabled-image-bus.c_bus_image_method_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"org.freedesktop.portable1.attach-images\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@PORTABLE_RUNTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*)* @bus_image_method_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_image_method_detach(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = call i32 @assert(%struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = call i32 @assert(%struct.TYPE_10__* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = call i32 @assert(%struct.TYPE_10__* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = call i32 @sd_bus_message_read(%struct.TYPE_10__* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %3
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %34 = load i32, i32* @UID_INVALID, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @bus_verify_polkit_async(%struct.TYPE_10__* %32, i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0, i32 %34, i32* %36, i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %75

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = call i32 @sd_bus_message_get_bus(%struct.TYPE_10__* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @PORTABLE_RUNTIME, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @portable_detach(i32 %49, i32 %52, i32 %59, i32** %8, i64* %11, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @reply_portable_changes(%struct.TYPE_10__* %66, i32* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @portable_changes_free(i32* %71, i64 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %46, %41, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_10__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @portable_detach(i32, i32, i32, i32**, i64*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_10__*) #1

declare dso_local i32 @reply_portable_changes(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @portable_changes_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
