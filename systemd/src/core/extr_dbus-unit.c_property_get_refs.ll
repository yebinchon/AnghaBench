; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_property_get_refs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_property_get_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_refs(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %16, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @assert(i32* %23)
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @assert(i32* %25)
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @sd_bus_message_open_container(i32* %27, i8 signext 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %8, align 4
  br label %77

33:                                               ; preds = %7
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @sd_bus_track_first(i32 %36)
  store i8* %37, i8** %17, align 8
  br label %38

38:                                               ; preds = %69, %33
  %39 = load i8*, i8** %17, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %17, align 8
  %46 = call i32 @sd_bus_track_count_name(i32 %44, i8* %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %19, align 4
  store i32 %50, i32* %8, align 4
  br label %77

51:                                               ; preds = %41
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @sd_bus_message_append(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %8, align 4
  br label %77

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  br label %52

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @sd_bus_track_next(i32 %72)
  store i8* %73, i8** %17, align 8
  br label %38

74:                                               ; preds = %38
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @sd_bus_message_close_container(i32* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %62, %49, %31
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_open_container(i32*, i8 signext, i8*) #1

declare dso_local i8* @sd_bus_track_first(i32) #1

declare dso_local i32 @sd_bus_track_count_name(i32, i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*) #1

declare dso_local i8* @sd_bus_track_next(i32) #1

declare dso_local i32 @sd_bus_message_close_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
