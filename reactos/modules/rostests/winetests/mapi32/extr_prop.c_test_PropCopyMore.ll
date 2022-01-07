; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_PropCopyMore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_PropCopyMore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@test_PropCopyMore.szHiA = internal global [4 x i8] c"Hi!\00", align 1
@test_PropCopyMore.szHiW = internal global [4 x i8] c"Hi!\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Expected MAPIAllocateBuffer to return S_OK, got 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"MAPIAllocateBuffer failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Expected MAPIAllocateMore to return S_OK, got 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"MAPIAllocateMore failed\0A\00", align 1
@ptTypes = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"PropCopyMore: Expected 0x0,%d, got 0x%08x,%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"PropCopyMore: Ascii string differs\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"PropCopyMore: Unicode string differs\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"PropCopyMore: Binary array  differs\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Expected MAPIFreeBuffer to return S_OK, got 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PropCopyMore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PropCopyMore() #0 {
  %1 = alloca %struct.TYPE_14__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %1, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  %5 = call i64 @pMAPIAllocateBuffer(i32 32, %struct.TYPE_14__** %1)
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %4, align 8
  %11 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @FAILED(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %166

17:                                               ; preds = %0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %19 = call i64 @pMAPIAllocateMore(i32 32, %struct.TYPE_14__* %18, %struct.TYPE_14__** %2)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %4, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @FAILED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @skip(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %166

31:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %154, %31
  %33 = load i64, i64* %3, align 8
  %34 = load i32*, i32** @ptTypes, align 8
  %35 = call i64 @ARRAY_SIZE(i32* %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %157

37:                                               ; preds = %32
  %38 = load i32*, i32** @ptTypes, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** @ptTypes, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %65 [
    i32 129, label %48
    i32 128, label %52
    i32 130, label %56
  ]

48:                                               ; preds = %37
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_PropCopyMore.szHiA, i64 0, i64 0), i8** %51, align 8
  br label %65

52:                                               ; preds = %37
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_PropCopyMore.szHiW, i64 0, i64 0), i8** %55, align 8
  br label %65

56:                                               ; preds = %37
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 ptrtoint ([4 x i8]* @test_PropCopyMore.szHiA to i32), i32* %64, align 4
  br label %65

65:                                               ; preds = %37, %56, %52, %48
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %67 = call i32 @memset(%struct.TYPE_14__* %66, i32 255, i32 32)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %71 = call i64 @pPropCopyMore(%struct.TYPE_14__* %68, %struct.TYPE_14__* %69, i32* bitcast (i64 (i32, %struct.TYPE_14__*, %struct.TYPE_14__**)* @pMAPIAllocateMore to i32*), %struct.TYPE_14__* %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br label %82

82:                                               ; preds = %74, %65
  %83 = phi i1 [ false, %65 ], [ %81, %74 ]
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %87, i64 %88, i32 %91)
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @SUCCEEDED(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %153

96:                                               ; preds = %82
  %97 = load i32*, i32** @ptTypes, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %152 [
    i32 129, label %101
    i32 128, label %114
    i32 130, label %127
  ]

101:                                              ; preds = %96
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @lstrcmpA(i8* %105, i8* %109)
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %152

114:                                              ; preds = %96
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcmpW(i8* %118, i8* %122)
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %152

127:                                              ; preds = %96
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %148

134:                                              ; preds = %127
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @memcmp(i32 %139, i32 %144, i32 4)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br label %148

148:                                              ; preds = %134, %127
  %149 = phi i1 [ false, %127 ], [ %147, %134 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %152

152:                                              ; preds = %96, %148, %114, %101
  br label %153

153:                                              ; preds = %152, %82
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %3, align 8
  br label %32

157:                                              ; preds = %32
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %159 = call i64 @pMAPIFreeBuffer(%struct.TYPE_14__* %158)
  store i64 %159, i64* %4, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* @S_OK, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %4, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i64 %164)
  br label %166

166:                                              ; preds = %157, %29, %15
  ret void
}

declare dso_local i64 @pMAPIAllocateBuffer(i32, %struct.TYPE_14__**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @pMAPIAllocateMore(i32, %struct.TYPE_14__*, %struct.TYPE_14__**) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @pPropCopyMore(%struct.TYPE_14__*, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @strcmpW(i8*, i8*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i64 @pMAPIFreeBuffer(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
