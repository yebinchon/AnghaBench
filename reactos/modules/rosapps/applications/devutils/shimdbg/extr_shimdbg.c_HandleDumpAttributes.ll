; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_HandleDumpAttributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_HandleDumpAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Error: no image name specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Dumping attributes for %s\0A\00", align 1
@ATTRIBUTE_AVAILABLE = common dso_local global i64 0, align 8
@TAG_TYPE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"<%ls>0x%lx</%ls>\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"<%ls>%ls</%ls>\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"<%ls>0x%I64x</%ls>\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"<!-- Unknown tag type: 0x%x (from 0x%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unable to get attributes from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HandleDumpAttributes(i32 %0, i8** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = call i32 (...) @InitApphelp()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %146

23:                                               ; preds = %4
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 1
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load i8**, i8*** %7, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8* %43, i8** %15, align 8
  br label %62

44:                                               ; preds = %23
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %146

51:                                               ; preds = %44
  %52 = load i8**, i8*** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %15, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_6__* %10, i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pSdbGetFileAttributes(i32 %66, %struct.TYPE_7__** %11, i64* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %141

69:                                               ; preds = %62
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %136, %69
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %139

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATTRIBUTE_AVAILABLE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %136

85:                                               ; preds = %76
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pSdbTagToString(i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TAG_TYPE_MASK, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  switch i32 %99, label %127 [
    i32 130, label %100
    i32 128, label %109
    i32 129, label %118
  ]

100:                                              ; preds = %85
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %106, i32 %107)
  br label %135

109:                                              ; preds = %85
  %110 = load i32, i32* %17, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %115, i32 %116)
  br label %135

118:                                              ; preds = %85
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %124, i32 %125)
  br label %135

127:                                              ; preds = %85
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %127, %118, %109, %100
  br label %136

136:                                              ; preds = %135, %84
  %137 = load i64, i64* %13, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %13, align 8
  br label %72

139:                                              ; preds = %72
  %140 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %144

141:                                              ; preds = %62
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %139
  %145 = call i32 @RtlFreeUnicodeString(%struct.TYPE_6__* %10)
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %49, %22
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @InitApphelp(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @pSdbGetFileAttributes(i32, %struct.TYPE_7__**, i64*) #1

declare dso_local i32 @pSdbTagToString(i32) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
