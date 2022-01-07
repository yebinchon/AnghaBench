; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shdocvw.c_test_ParseURLFromOutsideSourceW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shdocvw.c_test_ParseURLFromOutsideSourceW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@ParseURL_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"got %d and %d with '%s' (expected 1 and %d with '%s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"+1: got %d and %d with '%s' (expected '!=0' and %d with '%s')\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"==: got %d and %d (expected '0' and %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"-1: got %d and %d (expected '0' and %d or %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ParseURLFromOutsideSourceW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ParseURLFromOutsideSourceW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %16 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  %19 = load i32, i32* @CP_ACP, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %25 = call i32 @MultiByteToWideChar(i32 %19, i32 0, i8* %23, i32 -1, i32* %12, i32 %24)
  %26 = sub i64 %17, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i8* %18, i8 signext 35, i32 %27)
  %29 = sub i64 %17, 1
  %30 = getelementptr inbounds i8, i8* %18, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* @CP_ACP, align 4
  %32 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %33 = call i32 @MultiByteToWideChar(i32 %31, i32 0, i8* %18, i32 -1, i32* %15, i32 %32)
  %34 = call i32 @ARRAY_SIZE(i32* %15)
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %35 = call i32 @pParseURLFromOutsideSourceW(i32* %12, i32* %15, i32* %7, i32* %6)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @CP_ACP, align 4
  %37 = trunc i64 %17 to i32
  %38 = call i32 @WideCharToMultiByte(i32 %36, i32 0, i32* %15, i32 -1, i8* %18, i32 %37, i32* null, i32* null)
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %56

41:                                               ; preds = %0
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lstrcmpA(i8* %18, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %48, %41, %0
  %57 = phi i1 [ false, %41 ], [ false, %0 ], [ %55, %48 ]
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i8* %18, i32 %64, i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %5, align 4
  %71 = sub i64 %17, 1
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(i8* %18, i8 signext 35, i32 %72)
  %74 = sub i64 %17, 1
  %75 = getelementptr inbounds i8, i8* %18, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* @CP_ACP, align 4
  %77 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %78 = call i32 @MultiByteToWideChar(i32 %76, i32 0, i8* %18, i32 -1, i32* %15, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %81 = call i32 @pParseURLFromOutsideSourceW(i32* %12, i32* %15, i32* %7, i32* %6)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @CP_ACP, align 4
  %83 = trunc i64 %17 to i32
  %84 = call i32 @WideCharToMultiByte(i32 %82, i32 0, i32* %15, i32 -1, i8* %18, i32 %83, i32* null, i32* null)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %56
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lstrcmpA(i8* %18, i32 %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %94, %87, %56
  %103 = phi i1 [ false, %87 ], [ false, %56 ], [ %101, %94 ]
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106, i8* %18, i32 %110, i32 %114)
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %117 = call i32 @pParseURLFromOutsideSourceW(i32* %12, i32* %15, i32* %7, i32* %6)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %102
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = icmp eq i32 %121, %126
  br label %128

128:                                              ; preds = %120, %102
  %129 = phi i1 [ false, %102 ], [ %127, %120 ]
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  %138 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132, i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %141 = call i32 @pParseURLFromOutsideSourceW(i32* %12, i32* %15, i32* %7, i32* %6)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %128
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %145, %149
  br i1 %150, label %159, label %151

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  %158 = icmp eq i32 %152, %157
  br label %159

159:                                              ; preds = %151, %144
  %160 = phi i1 [ true, %144 ], [ %158, %151 ]
  br label %161

161:                                              ; preds = %159, %128
  %162 = phi i1 [ false, %128 ], [ %160, %159 ]
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ParseURL_table, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  %175 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %163, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %165, i32 %169, i32 %174)
  %176 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %176)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @pParseURLFromOutsideSourceW(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @lstrcmpA(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
