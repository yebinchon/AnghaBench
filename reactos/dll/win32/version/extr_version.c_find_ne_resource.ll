; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_find_ne_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_find_ne_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@VS_FILE_INFO = common dso_local global i32 0, align 4
@VS_VERSION_INFO = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No resources in NE dll\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No typeid entry found\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No resid entry found\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @find_ne_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ne_resource(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @VS_FILE_INFO, align 4
  %18 = or i32 %17, 32768
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @VS_VERSION_INFO, align 4
  %21 = or i32 %20, 32768
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SEEK_CUR, align 4
  %25 = call i32 @LZSeek(i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %5, align 4
  %27 = bitcast %struct.TYPE_6__* %10 to i8*
  %28 = call i32 @LZRead(i32 %26, i8* %27, i32 8)
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 8, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %165

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %165

44:                                               ; preds = %33
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i32, i32* %15, align 4
  %47 = call i64 @HeapAlloc(i32 %45, i32 0, i32 %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %165

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i32 @LZSeek(i32 %53, i32 %57, i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %14, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @LZRead(i32 %61, i8* %63, i32 %64)
  %66 = icmp ne i32 %60, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @HeapFree(i32 %68, i32 0, i64 %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %165

72:                                               ; preds = %52
  %73 = load i64, i64* %14, align 8
  %74 = add nsw i64 %73, 2
  %75 = inttoptr i64 %74 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %11, align 8
  br label %76

76:                                               ; preds = %88, %72
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %105

88:                                               ; preds = %81
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 1
  %91 = bitcast %struct.TYPE_4__* %90 to i8*
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 24
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  %98 = bitcast i8* %97 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %11, align 8
  br label %76

99:                                               ; preds = %76
  %100 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 (...) @GetProcessHeap()
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @HeapFree(i32 %101, i32 0, i64 %102)
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %4, align 4
  br label %165

105:                                              ; preds = %87
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 1
  %108 = bitcast %struct.TYPE_4__* %107 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %12, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %123, %105
  %113 = load i32, i32* %16, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %134

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %16, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 1
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** %12, align 8
  br label %112

128:                                              ; preds = %112
  %129 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 (...) @GetProcessHeap()
  %131 = load i64, i64* %14, align 8
  %132 = call i32 @HeapFree(i32 %130, i32 0, i64 %131)
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %4, align 4
  br label %165

134:                                              ; preds = %121
  %135 = load i32*, i32** %6, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = inttoptr i64 %141 to i64*
  %143 = load i64, i64* %142, align 8
  %144 = shl i64 %140, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %6, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %137, %134
  %148 = load i32*, i32** %7, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %14, align 8
  %155 = inttoptr i64 %154 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = shl i64 %153, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %150, %147
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load i64, i64* %14, align 8
  %163 = call i32 @HeapFree(i32 %161, i32 0, i64 %162)
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %128, %99, %67, %50, %41, %31
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @LZSeek(i32, i32, i32) #1

declare dso_local i32 @LZRead(i32, i8*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
