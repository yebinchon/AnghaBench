; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_image.c_get_ImageBase.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_image.c_get_ImageBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@INVALID_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"get_ImageBase, cannot open '%s' (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"get_ImageBase %s, read error IMAGE_DOS_HEADER (%s)\0A\00", align 1
@IMAGE_DOS_MAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"get_ImageBase %s, MZ header missing\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"get_ImageBase %s, read error IMAGE_FILE_HEADER (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"get_ImageBase %s, read error IMAGE_OPTIONAL_HEADER (%s)\0A\00", align 1
@IMAGE_NT_OPTIONAL_HDR32_MAGIC = common dso_local global i64 0, align 8
@IMAGE_NT_OPTIONAL_HDR64_MAGIC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"get_ImageBase %s, not an IMAGE_NT_OPTIONAL_HDR 32/64 bit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ImageBase(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i64, i64* @INVALID_BASE, align 8
  %13 = load i64*, i64** %5, align 8
  store i64 %12, i64* %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 (i32, i8*, i8*, ...) @l2l_dbg(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %21)
  store i32 1, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @fread(%struct.TYPE_5__* %6, i32 32, i32 1, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 1, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 (i32, i8*, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @fclose(i32* %33)
  store i32 2, i32* %3, align 4
  br label %101

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IMAGE_DOS_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %35
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (i32, i8*, i8*, ...) @l2l_dbg(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @fclose(i32* %47)
  store i32 3, i32* %3, align 4
  br label %101

49:                                               ; preds = %40
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @SEEK_SET, align 4
  %56 = call i32 @fseek(i32* %50, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @fread(%struct.TYPE_5__* %7, i32 32, i32 1, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 1, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 (i32, i8*, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %62, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @fclose(i32* %66)
  store i32 4, i32* %3, align 4
  br label %101

68:                                               ; preds = %49
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @fread(%struct.TYPE_5__* %8, i32 32, i32 1, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 1, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (i32, i8*, i8*, ...) @l2l_dbg(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %74, i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @fclose(i32* %78)
  store i32 5, i32* %3, align 4
  br label %101

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR32_MAGIC, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR64_MAGIC, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @l2l_dbg(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @fclose(i32* %93)
  store i32 6, i32* %3, align 4
  br label %101

95:                                               ; preds = %85, %80
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %5, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @fclose(i32* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %90, %73, %61, %44, %28, %18
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @l2l_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fread(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
