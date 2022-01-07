; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_property_get_xkb.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_localed.c_property_get_xkb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"X11Layout\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"X11Model\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"X11Variant\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"X11Options\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_xkb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_xkb(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
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
  %22 = call i32 @x11_read_data(%struct.TYPE_3__* %20, i32* %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %8, align 4
  br label %73

27:                                               ; preds = %7
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @streq(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %13, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sd_bus_message_append_basic(i32* %32, i8 signext 115, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %73

37:                                               ; preds = %27
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @streq(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sd_bus_message_append_basic(i32* %42, i8 signext 115, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %73

47:                                               ; preds = %37
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @streq(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32*, i32** %13, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sd_bus_message_append_basic(i32* %52, i8 signext 115, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %73

57:                                               ; preds = %47
  %58 = load i8*, i8** %12, align 8
  %59 = call i64 @streq(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32*, i32** %13, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sd_bus_message_append_basic(i32* %62, i8 signext 115, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %73

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %61, %51, %41, %31, %25
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @x11_read_data(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_append_basic(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
