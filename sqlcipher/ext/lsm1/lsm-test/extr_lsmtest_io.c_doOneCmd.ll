; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_io.c_doOneCmd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_io.c_doOneCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unrecognized command: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i8*, i8**)* @doOneCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doOneCmd(%struct.TYPE_3__* %0, i32* %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %19 = load i8*, i8** %10, align 8
  store i8* %19, i8** %13, align 8
  br label %20

20:                                               ; preds = %25, %5
  %21 = load i8*, i8** %13, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @safe_isspace(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %13, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %13, align 8
  br label %20

28:                                               ; preds = %20
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %12, align 1
  %31 = load i8, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8**, i8*** %11, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %13, align 8
  %39 = load i8**, i8*** %11, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %6, align 4
  br label %140

41:                                               ; preds = %28
  %42 = load i8, i8* %12, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 115
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 83
  br i1 %48, label %49, label %61

49:                                               ; preds = %45, %41
  %50 = load i8**, i8*** %11, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8**, i8*** %11, align 8
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fdatasync(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %140

61:                                               ; preds = %45
  %62 = load i8, i8* %12, align 1
  %63 = call i64 @safe_isdigit(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %136

65:                                               ; preds = %61
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = call i64 @getNextSize(i8* %66, i8** %13, i32* %16)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load i8*, i8** %13, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 64
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %65
  br label %137

77:                                               ; preds = %71
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i64 @getNextSize(i8* %80, i8** %13, i32* %16)
  store i64 %81, i64* %14, align 8
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %77
  %85 = load i8*, i8** %13, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @safe_isspace(i8 signext %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8*, i8** %13, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %77
  br label %137

95:                                               ; preds = %89, %84
  %96 = load i8**, i8*** %11, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i8*, i8** %13, align 8
  %100 = load i8**, i8*** %11, align 8
  store i8* %99, i8** %100, align 8
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %9, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* %17, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %14, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @SEEK_SET, align 4
  %114 = call i32 @lseek(i32 %110, i32 %112, i32 %113)
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %126, %101
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @write(i32 %122, i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32, i32* %15, align 4
  %131 = sdiv i32 %130, 1024
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  store i32 0, i32* %6, align 4
  br label %140

136:                                              ; preds = %61
  br label %137

137:                                              ; preds = %136, %94, %76
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @testPrintError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %138)
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %129, %56, %40
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i64 @safe_isspace(i8 signext) #1

declare dso_local i32 @fdatasync(i32) #1

declare dso_local i64 @safe_isdigit(i8 signext) #1

declare dso_local i64 @getNextSize(i8*, i8**, i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @testPrintError(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
