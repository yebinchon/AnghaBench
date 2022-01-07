; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_message_get_arg_skip.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_message_get_arg_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@SD_BUS_TYPE_STRING = common dso_local global i32 0, align 4
@SD_BUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@SD_BUS_TYPE_SIGNATURE = common dso_local global i32 0, align 4
@SD_BUS_TYPE_ARRAY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8**)* @bus_message_get_arg_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_message_get_arg_skip(i32* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @sd_bus_message_rewind(i32* %14, i32 1)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %82

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %79, %20
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @sd_bus_message_peek_type(i32* %22, i8* %13, i8** %12)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %82

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %28
  %35 = load i8, i8* %13, align 1
  %36 = load i32, i32* @SD_BUS_TYPE_STRING, align 4
  %37 = load i32, i32* @SD_BUS_TYPE_OBJECT_PATH, align 4
  %38 = load i32, i32* @SD_BUS_TYPE_SIGNATURE, align 4
  %39 = call i32 @IN_SET(i8 signext %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %34
  %42 = load i8, i8* %13, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @SD_BUS_TYPE_ARRAY, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @STR_IN_SET(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %82

54:                                               ; preds = %47, %34
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i8**, i8*** %9, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %12, align 8
  %63 = load i8**, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8, i8* %13, align 1
  %69 = load i8*, i8** %8, align 8
  store i8 %68, i8* %69, align 1
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %5, align 4
  br label %82

71:                                               ; preds = %54
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @sd_bus_message_skip(i32* %72, i32* null)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %82

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %21

82:                                               ; preds = %76, %70, %51, %31, %26, %18
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @sd_bus_message_rewind(i32*, i32) #1

declare dso_local i32 @sd_bus_message_peek_type(i32*, i8*, i8**) #1

declare dso_local i32 @IN_SET(i8 signext, i32, i32, i32) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sd_bus_message_skip(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
