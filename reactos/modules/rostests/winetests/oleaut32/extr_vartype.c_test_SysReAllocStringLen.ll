; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_SysReAllocStringLen.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_SysReAllocStringLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.test_SysReAllocStringLen.szTest = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@__const.test_SysReAllocStringLen.szSmaller = private unnamed_addr constant [2 x i8] c"x\00", align 1
@__const.test_SysReAllocStringLen.szLarger = private unnamed_addr constant [7 x i8] c"Larger\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"Expected non-NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Expected 8, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"String different\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Expected 1, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Expected 12, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Expected reuse of the old string memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Expected null terminator, got 0x%04X\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Incorrect string length\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Incorrect string returned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SysReAllocStringLen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SysReAllocStringLen() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca [2 x i8], align 1
  %3 = alloca [7 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_SysReAllocStringLen.szTest, i32 0, i32 0), i64 5, i1 false)
  %12 = bitcast [2 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_SysReAllocStringLen.szSmaller, i32 0, i32 0), i64 2, i1 false)
  %13 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_SysReAllocStringLen.szLarger, i32 0, i32 0), i64 7, i1 false)
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %15 = call i8* @SysAllocStringLen(i8* %14, i32 4)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %106

22:                                               ; preds = %0
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct.TYPE_3__* @Get(i8* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 8
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %38 = call i32 @lstrcmpW(i32 %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %44 = call i32 @SysReAllocStringLen(i8** %4, i8* %43, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call %struct.TYPE_3__* @Get(i8* %50)
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %5, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i32
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %65 = call i32 @lstrcmpW(i32 %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %70 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %71 = call i32 @SysReAllocStringLen(i8** %4, i8* %70, i32 6)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %4, align 8
  %78 = call %struct.TYPE_3__* @Get(i8* %77)
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %5, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 12
  %83 = zext i1 %82 to i32
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %92 = call i32 @lstrcmpW(i32 %90, i8* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @SysReAllocStringLen(i8** %4, i8* %97, i32 6)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @SysFreeString(i8* %104)
  br label %106

106:                                              ; preds = %22, %0
  %107 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %108 = call i8* @SysAllocStringLen(i8* %107, i32 4)
  store i8* %108, i8** %4, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = icmp ne i8* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %113 = load i8*, i8** %4, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %165

115:                                              ; preds = %106
  store i32 64, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %116 = call i32 @SysReAllocStringLen(i8** %4, i8* null, i32 64)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 1
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i8*, i8** %4, align 8
  %123 = icmp ne i8* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %126 = load i8*, i8** %4, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %164

128:                                              ; preds = %115
  %129 = load i8*, i8** %4, align 8
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @memset(i8* %130, i32 171, i32 64)
  %132 = call i32 @SysReAllocStringLen(i8** %4, i8* null, i32 24)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, 1
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = load i8*, i8** %4, align 8
  %139 = icmp ne i8* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %142 = load i8*, i8** %4, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %163

144:                                              ; preds = %128
  %145 = load i8*, i8** %4, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = icmp eq i8* %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 24
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 24
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @SysFreeString(i8* %161)
  br label %163

163:                                              ; preds = %144, %128
  br label %164

164:                                              ; preds = %163, %115
  br label %165

165:                                              ; preds = %164, %106
  %166 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %167 = call i8* @SysAllocStringLen(i8* %166, i32 4)
  store i8* %167, i8** %4, align 8
  %168 = load i8*, i8** %4, align 8
  %169 = icmp ne i8* %168, null
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %172 = load i8*, i8** %4, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %191

174:                                              ; preds = %165
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 @SysReAllocStringLen(i8** %4, i8* %175, i32 1000000)
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @SysStringLen(i8* %177)
  %179 = icmp eq i32 %178, 1000000
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %182 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %183 = load i8*, i8** %4, align 8
  %184 = call i32 @memcmp(i8* %182, i8* %183, i32 16)
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %189 = load i8*, i8** %4, align 8
  %190 = call i32 @SysFreeString(i8* %189)
  br label %191

191:                                              ; preds = %174, %165
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @SysAllocStringLen(i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local %struct.TYPE_3__* @Get(i8*) #2

declare dso_local i32 @lstrcmpW(i32, i8*) #2

declare dso_local i32 @SysReAllocStringLen(i8**, i8*, i32) #2

declare dso_local i32 @SysFreeString(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @SysStringLen(i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
