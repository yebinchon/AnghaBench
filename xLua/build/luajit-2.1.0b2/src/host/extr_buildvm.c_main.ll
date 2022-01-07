; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_buildvm.c_main.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_buildvm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i32 }

@LJ_32 = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error: pointer size mismatch in cross-build.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Try: make HOST_CC=\22gcc -m32\22 CROSS=...\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error: DASM error %08x\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Error: cannot open output file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Error: cannot write to output file: %s\0A\00", align 1
@_O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %7, align 8
  %10 = load i32, i32* @LJ_32, align 4
  %11 = mul nsw i32 4, %10
  %12 = load i32, i32* @LJ_64, align 4
  %13 = mul nsw i32 8, %12
  %14 = add nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 8, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %140

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @UNUSED(i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @parseargs(%struct.TYPE_12__* %25, i8** %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = call i32 @build_code(%struct.TYPE_12__* %28)
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 1, i32* %3, align 4
  br label %140

35:                                               ; preds = %22
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %40 [
    i32 131, label %39
    i32 130, label %39
  ]

39:                                               ; preds = %35, %35
  store i32 1, i32* %9, align 4
  br label %41

40:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @stdout, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %83

61:                                               ; preds = %49, %41
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %69 = call i32 @fopen(i8* %64, i8* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = icmp ne i32 %69, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @stderr, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i8* @strerror(i32 %78)
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %77, i8* %79)
  %81 = call i32 @exit(i32 1) #3
  unreachable

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %118 [
    i32 136, label %87
    i32 137, label %87
    i32 132, label %87
    i32 131, label %92
    i32 130, label %95
    i32 138, label %98
    i32 128, label %103
    i32 135, label %112
    i32 133, label %112
    i32 129, label %112
    i32 134, label %115
  ]

87:                                               ; preds = %83, %83, %83
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = call i32 @emit_asm(%struct.TYPE_12__* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = call i32 @emit_asm_debug(%struct.TYPE_12__* %90)
  br label %119

92:                                               ; preds = %83
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = call i32 @emit_peobj(%struct.TYPE_12__* %93)
  br label %119

95:                                               ; preds = %83
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = call i32 @emit_raw(%struct.TYPE_12__* %96)
  br label %119

98:                                               ; preds = %83
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = call i32 @emit_bcdef(%struct.TYPE_12__* %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = call i32 @emit_lib(%struct.TYPE_12__* %101)
  br label %119

103:                                              ; preds = %83
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = call i32 @emit_vmdef(%struct.TYPE_12__* %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = call i32 @emit_lib(%struct.TYPE_12__* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %119

112:                                              ; preds = %83, %83, %83
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = call i32 @emit_lib(%struct.TYPE_12__* %113)
  br label %119

115:                                              ; preds = %83
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = call i32 @emit_fold(%struct.TYPE_12__* %116)
  br label %119

118:                                              ; preds = %83
  br label %119

119:                                              ; preds = %118, %115, %112, %103, %98, %95, %92, %87
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @fflush(i32 %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @ferror(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load i32, i32* @stderr, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i8* @strerror(i32 %131)
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %119
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @fclose(i32 %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %135, %31, %17
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @parseargs(%struct.TYPE_12__*, i8**) #1

declare dso_local i32 @build_code(%struct.TYPE_12__*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @emit_asm(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_asm_debug(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_peobj(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_raw(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_bcdef(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_lib(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_vmdef(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_fold(%struct.TYPE_12__*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
