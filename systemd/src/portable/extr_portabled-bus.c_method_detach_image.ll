; ModuleID = '/home/carl/AnghaBench/systemd/src/portable/extr_portabled-bus.c_method_detach_image.c'
source_filename = "/home/carl/AnghaBench/systemd/src/portable/extr_portabled-bus.c_method_detach_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"org.freedesktop.portable1.attach-images\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@PORTABLE_RUNTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32*)* @method_detach_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_detach_image(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = call i32 @assert(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call i32 @sd_bus_message_read(%struct.TYPE_9__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %13)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %29 = load i32, i32* @UID_INVALID, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @bus_verify_polkit_async(%struct.TYPE_9__* %27, i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0, i32 %29, i32* %31, i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %68

42:                                               ; preds = %38
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = call i32 @sd_bus_message_get_bus(%struct.TYPE_9__* %43)
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @PORTABLE_RUNTIME, align 4
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @portable_detach(i32 %44, i8* %45, i32 %52, i32** %8, i64* %10, i32* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %63

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @reply_portable_changes(%struct.TYPE_9__* %59, i32* %60, i64 %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %57
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @portable_changes_free(i32* %64, i64 %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %41, %36, %24
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_9__*, i8*, i8**, i32*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_9__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @portable_detach(i32, i8*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @reply_portable_changes(%struct.TYPE_9__*, i32*, i64) #1

declare dso_local i32 @portable_changes_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
