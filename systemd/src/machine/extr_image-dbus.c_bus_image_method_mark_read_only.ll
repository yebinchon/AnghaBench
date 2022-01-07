; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_image-dbus.c_bus_image_method_mark_read_only.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_image-dbus.c_bus_image_method_mark_read_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"org.freedesktop.machine1.manage-images\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_image_method_mark_read_only(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @sd_bus_message_read(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %28 = load i32, i32* @UID_INVALID, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @bus_verify_polkit_async(i32* %26, i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0, i32 %28, i32* %30, i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %52

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @image_read_only(%struct.TYPE_5__* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @sd_bus_reply_method_return(i32* %50, i32* null)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %47, %40, %35, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @bus_verify_polkit_async(i32*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @image_read_only(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
