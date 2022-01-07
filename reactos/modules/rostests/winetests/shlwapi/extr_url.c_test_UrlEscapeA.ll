; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlEscapeA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlEscapeA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"/woningplan/woonkamer basis.swf\00", align 1
@URL_ESCAPE_SPACES_ONLY = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"got %x, expected %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"got %d, expected %d\0A\00", align 1
@E_POINTER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"String has changed, empty_string[0] = %d\0A\00", align 1
@URL_ESCAPE_AS_UTF8 = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i8* null, align 8
@TEST_ESCAPE = common dso_local global %struct.TYPE_3__* null, align 8
@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"UrlEscapeA returned 0x%08x instead of 0x%08x for \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Expected \22%s\22, but got \22%s\22 for \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UrlEscapeA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UrlEscapeA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast [1 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 1, i1 false)
  %8 = load i32, i32* @URL_ESCAPE_SPACES_ONLY, align 4
  %9 = call i8* @pUrlEscapeA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* null, i32* %1, i32 %8)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** @E_INVALIDARG, align 8
  %12 = icmp eq i8* %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** @E_INVALIDARG, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %1, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 0)
  store i32 0, i32* %1, align 4
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %23 = load i32, i32* @URL_ESCAPE_SPACES_ONLY, align 4
  %24 = call i8* @pUrlEscapeA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %22, i32* %1, i32 %23)
  store i8* %24, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = load i8*, i8** @E_INVALIDARG, align 8
  %27 = icmp eq i8* %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i8*, i8** %2, align 8
  %30 = load i8*, i8** @E_INVALIDARG, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30)
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 0)
  store i32 1, i32* %1, align 4
  %37 = load i32, i32* @URL_ESCAPE_SPACES_ONLY, align 4
  %38 = call i8* @pUrlEscapeA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* null, i32* %1, i32 %37)
  store i8* %38, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = load i8*, i8** @E_INVALIDARG, align 8
  %41 = icmp eq i8* %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %2, align 8
  %44 = load i8*, i8** @E_INVALIDARG, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 1)
  store i32 1, i32* %1, align 4
  %51 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %52 = load i32, i32* @URL_ESCAPE_SPACES_ONLY, align 4
  %53 = call i8* @pUrlEscapeA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %51, i32* null, i32 %52)
  store i8* %53, i8** %2, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = load i8*, i8** @E_INVALIDARG, align 8
  %56 = icmp eq i8* %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i8*, i8** %2, align 8
  %59 = load i8*, i8** @E_INVALIDARG, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i32, i32* %1, align 4
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %1, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 1)
  store i32 1, i32* %1, align 4
  %66 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  store i8 127, i8* %66, align 1
  %67 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %68 = load i32, i32* @URL_ESCAPE_SPACES_ONLY, align 4
  %69 = call i8* @pUrlEscapeA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %67, i32* %1, i32 %68)
  store i8* %69, i8** %2, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = load i8*, i8** @E_POINTER, align 8
  %72 = icmp eq i8* %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i8*, i8** %2, align 8
  %75 = load i8*, i8** @E_POINTER, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %75)
  %77 = load i32, i32* %1, align 4
  %78 = icmp eq i32 %77, 34
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %1, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 34)
  %82 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 127
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  store i32 1, i32* %1, align 4
  %91 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  store i8 127, i8* %91, align 1
  %92 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %93 = load i32, i32* @URL_ESCAPE_AS_UTF8, align 4
  %94 = call i8* @pUrlEscapeA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %92, i32* %1, i32 %93)
  store i8* %94, i8** %2, align 8
  %95 = load i8*, i8** %2, align 8
  %96 = load i8*, i8** @E_NOTIMPL, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %0
  %99 = load i8*, i8** %2, align 8
  %100 = load i8*, i8** @E_POINTER, align 8
  %101 = icmp eq i8* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @broken(i32 %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %98, %0
  %106 = phi i1 [ true, %0 ], [ %104, %98 ]
  %107 = zext i1 %106 to i32
  %108 = load i8*, i8** %2, align 8
  %109 = load i8*, i8** @E_NOTIMPL, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %108, i8* %109)
  %111 = load i32, i32* %1, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %119, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %1, align 4
  %115 = icmp eq i32 %114, 34
  %116 = zext i1 %115 to i32
  %117 = call i64 @broken(i32 %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %113, %105
  %120 = phi i1 [ true, %105 ], [ %118, %113 ]
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %1, align 4
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 1)
  %124 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 127
  %128 = zext i1 %127 to i32
  %129 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %204, %119
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %136 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %135)
  %137 = icmp ult i32 %134, %136
  br i1 %137, label %138, label %207

138:                                              ; preds = %133
  %139 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %140 = zext i32 %139 to i64
  %141 = call i8* @llvm.stacksave()
  store i8* %141, i8** %5, align 8
  %142 = alloca i8, i64 %140, align 16
  store i64 %140, i64* %6, align 8
  %143 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  store i32 %143, i32* %1, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %145 = load i32, i32* %3, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %151 = load i32, i32* %3, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @pUrlEscapeA(i8* %149, i8* %142, i32* %1, i32 %155)
  store i8* %156, i8** %2, align 8
  %157 = load i8*, i8** %2, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %159 = load i32, i32* %3, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = icmp eq i8* %157, %163
  %165 = zext i1 %164 to i32
  %166 = load i8*, i8** %2, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %168 = load i32, i32* %3, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %174 = load i32, i32* %3, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %166, i8* %172, i8* %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %181 = load i32, i32* %3, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strcmp(i8* %142, i8* %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %191 = load i32, i32* %3, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_ESCAPE, align 8
  %197 = load i32, i32* %3, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %195, i8* %142, i8* %201)
  %203 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %203)
  br label %204

204:                                              ; preds = %138
  %205 = load i32, i32* %3, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %3, align 4
  br label %133

207:                                              ; preds = %133
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @pUrlEscapeA(i8*, i8*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
