; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_property_get_vconsole.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_property_get_vconsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"VConsoleKeymap\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"VConsoleKeymapToggle\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_vconsole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_vconsole(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %16, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @vconsole_read_data(%struct.TYPE_3__* %20, i32* %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %8, align 4
  br label %51

27:                                               ; preds = %7
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @streq(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %13, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sd_bus_message_append_basic(i32* %32, i8 signext 115, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %51

37:                                               ; preds = %27
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @streq(i8* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sd_bus_message_append_basic(i32* %42, i8 signext 115, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %41, %31, %25
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @vconsole_read_data(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_append_basic(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
