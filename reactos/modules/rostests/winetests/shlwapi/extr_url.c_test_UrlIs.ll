; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlIs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlIs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32 }

@URLIS_APPLIABLE = common dso_local global i32 0, align 4
@URLIS_DIRECTORY = common dso_local global i32 0, align 4
@URLIS_FILEURL = common dso_local global i32 0, align 4
@URLIS_HASQUERY = common dso_local global i32 0, align 4
@URLIS_NOHISTORY = common dso_local global i32 0, align 4
@URLIS_OPAQUE = common dso_local global i32 0, align 4
@URLIS_URL = common dso_local global i32 0, align 4
@TEST_PATH_IS_URL = common dso_local global %struct.TYPE_7__* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"returned %d from path %s, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"returned %d from path (UrlIsW) %s, expected %d\0A\00", align 1
@TEST_URLIS_ATTRIBS = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"returned %d for URLIS_OPAQUE, url \22%s\22, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"returned %d for URLIS_FILEURL, url \22%s\22, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"returned %d for URLIS_OPAQUE (UrlIsW), url \22%s\22, expected %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"returned %d for URLIS_FILEURL (UrlIsW), url \22%s\22, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UrlIs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UrlIs() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [80 x %struct.TYPE_7__], align 16
  %4 = load i32, i32* @URLIS_APPLIABLE, align 4
  %5 = call i32 @test_UrlIs_null(i32 %4)
  %6 = load i32, i32* @URLIS_DIRECTORY, align 4
  %7 = call i32 @test_UrlIs_null(i32 %6)
  %8 = load i32, i32* @URLIS_FILEURL, align 4
  %9 = call i32 @test_UrlIs_null(i32 %8)
  %10 = load i32, i32* @URLIS_HASQUERY, align 4
  %11 = call i32 @test_UrlIs_null(i32 %10)
  %12 = load i32, i32* @URLIS_NOHISTORY, align 4
  %13 = call i32 @test_UrlIs_null(i32 %12)
  %14 = load i32, i32* @URLIS_OPAQUE, align 4
  %15 = call i32 @test_UrlIs_null(i32 %14)
  %16 = load i32, i32* @URLIS_URL, align 4
  %17 = call i32 @test_UrlIs_null(i32 %16)
  store i64 0, i64* %2, align 8
  br label %18

18:                                               ; preds = %86, %0
  %19 = load i64, i64* %2, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %21 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %18
  %24 = load i32, i32* @CP_ACP, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [80 x %struct.TYPE_7__], [80 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %31 = getelementptr inbounds [80 x %struct.TYPE_7__], [80 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %32 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %31)
  %33 = call i32 @MultiByteToWideChar(i32 %24, i32 0, i32 %29, i32 -1, %struct.TYPE_7__* %30, i64 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @URLIS_URL, align 4
  %40 = call i64 @pUrlIsA(i32 %38, i32 %39)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %43 = load i64, i64* %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %1, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %51 = load i64, i64* %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %56 = load i64, i64* %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %54, i64 %59)
  br i1 true, label %61, label %85

61:                                               ; preds = %23
  %62 = getelementptr inbounds [80 x %struct.TYPE_7__], [80 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %63 = load i32, i32* @URLIS_URL, align 4
  %64 = call i64 @pUrlIsW(%struct.TYPE_7__* %62, i32 %63)
  store i64 %64, i64* %1, align 8
  %65 = load i64, i64* %1, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %67 = load i64, i64* %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %65, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %1, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %75 = load i64, i64* %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_PATH_IS_URL, align 8
  %80 = load i64, i64* %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %73, i32 %78, i64 %83)
  br label %85

85:                                               ; preds = %61, %23
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %2, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %2, align 8
  br label %18

89:                                               ; preds = %18
  store i64 0, i64* %2, align 8
  br label %90

90:                                               ; preds = %208, %89
  %91 = load i64, i64* %2, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %93 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %92)
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %211

95:                                               ; preds = %90
  %96 = load i32, i32* @CP_ACP, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %98 = load i64, i64* %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds [80 x %struct.TYPE_7__], [80 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %103 = getelementptr inbounds [80 x %struct.TYPE_7__], [80 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %104 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %103)
  %105 = call i32 @MultiByteToWideChar(i32 %96, i32 0, i32 %101, i32 -1, %struct.TYPE_7__* %102, i64 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %107 = load i64, i64* %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @URLIS_OPAQUE, align 4
  %112 = call i64 @pUrlIsA(i32 %110, i32 %111)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %115 = load i64, i64* %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %113, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %1, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %123 = load i64, i64* %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %128 = load i64, i64* %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %121, i32 %126, i64 %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %134 = load i64, i64* %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @URLIS_FILEURL, align 4
  %139 = call i64 @pUrlIsA(i32 %137, i32 %138)
  store i64 %139, i64* %1, align 8
  %140 = load i64, i64* %1, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %142 = load i64, i64* %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %140, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %1, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %150 = load i64, i64* %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %155 = load i64, i64* %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %148, i32 %153, i64 %158)
  br i1 true, label %160, label %207

160:                                              ; preds = %95
  %161 = getelementptr inbounds [80 x %struct.TYPE_7__], [80 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %162 = load i32, i32* @URLIS_OPAQUE, align 4
  %163 = call i64 @pUrlIsW(%struct.TYPE_7__* %161, i32 %162)
  store i64 %163, i64* %1, align 8
  %164 = load i64, i64* %1, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %166 = load i64, i64* %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %164, %169
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %1, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %174 = load i64, i64* %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %179 = load i64, i64* %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @ok(i32 %171, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i64 %172, i32 %177, i64 %182)
  %184 = getelementptr inbounds [80 x %struct.TYPE_7__], [80 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %185 = load i32, i32* @URLIS_FILEURL, align 4
  %186 = call i64 @pUrlIsW(%struct.TYPE_7__* %184, i32 %185)
  store i64 %186, i64* %1, align 8
  %187 = load i64, i64* %1, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %189 = load i64, i64* %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %187, %192
  %194 = zext i1 %193 to i32
  %195 = load i64, i64* %1, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %197 = load i64, i64* %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TEST_URLIS_ATTRIBS, align 8
  %202 = load i64, i64* %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i64 %195, i32 %200, i64 %205)
  br label %207

207:                                              ; preds = %160, %95
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %2, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %2, align 8
  br label %90

211:                                              ; preds = %90
  ret void
}

declare dso_local i32 @test_UrlIs_null(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, %struct.TYPE_7__*, i64) #1

declare dso_local i64 @pUrlIsA(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, i32, i64) #1

declare dso_local i64 @pUrlIsW(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
