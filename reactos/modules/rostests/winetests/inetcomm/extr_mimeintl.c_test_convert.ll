; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_convert.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }

@test_convert.test_string = internal global [12 x i8] c"test string\00", align 1
@test_convert.test_stringW = internal global [12 x i8] c"test string\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@VT_LPWSTR = common dso_local global i8* null, align 8
@CP_UNICODE = common dso_local global i32 0, align 4
@VT_LPSTR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"mismatched strings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_convert() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = call i32 @MimeOleGetInternat(i32** %1)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @S_OK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i32* bitcast ([12 x i8]* @test_convert.test_string to i32*), i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32 12, i32* %16, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @IMimeInternational_ConvertBuffer(i32* %17, i32 1252, i32 28591, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, i32* %5)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 12
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 12
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @CoTaskMemFree(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32 2, i32* %42, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @IMimeInternational_ConvertBuffer(i32* %43, i32 1252, i32 28591, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, i32* %5)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @CoTaskMemFree(i32* %64)
  %66 = load i8*, i8** @VT_LPWSTR, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_stringW, i64 0, i64 0), i8** %69, align 8
  %70 = load i32*, i32** %1, align 8
  %71 = load i32, i32* @CP_UNICODE, align 4
  %72 = call i32 @IMimeInternational_ConvertString(i32* %70, i32 %71, i32 1252, %struct.TYPE_10__* %6, %struct.TYPE_10__* %7)
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @S_OK, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @VT_LPSTR, align 8
  %82 = icmp eq i8* %80, %81
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_string, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  %98 = call i32 @PropVariantClear(%struct.TYPE_10__* %7)
  %99 = load i8*, i8** @VT_LPWSTR, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_stringW, i64 0, i64 0), i8** %102, align 8
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @IMimeInternational_ConvertString(i32* %103, i32 28591, i32 1252, %struct.TYPE_10__* %6, %struct.TYPE_10__* %7)
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @S_OK, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %2, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** @VT_LPSTR, align 8
  %114 = icmp eq i8* %112, %113
  %115 = zext i1 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_string, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %128)
  %130 = call i32 @PropVariantClear(%struct.TYPE_10__* %7)
  %131 = load i8*, i8** @VT_LPSTR, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i8* %131, i8** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_string, i64 0, i64 0), i8** %134, align 8
  %135 = load i32*, i32** %1, align 8
  %136 = load i32, i32* @CP_UNICODE, align 4
  %137 = call i32 @IMimeInternational_ConvertString(i32* %135, i32 28591, i32 %136, %struct.TYPE_10__* %6, %struct.TYPE_10__* %7)
  store i32 %137, i32* %2, align 4
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @S_OK, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %2, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @VT_LPWSTR, align 8
  %147 = icmp eq i8* %145, %146
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @lstrcmpW(i8* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_stringW, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %160 = call i32 @PropVariantClear(%struct.TYPE_10__* %7)
  %161 = load i8*, i8** @VT_LPSTR, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_string, i64 0, i64 0), i8** %164, align 8
  %165 = load i32*, i32** %1, align 8
  %166 = load i32, i32* @CP_UNICODE, align 4
  %167 = load i32, i32* @CP_UNICODE, align 4
  %168 = call i32 @IMimeInternational_ConvertString(i32* %165, i32 %166, i32 %167, %struct.TYPE_10__* %6, %struct.TYPE_10__* %7)
  store i32 %168, i32* %2, align 4
  %169 = load i32, i32* %2, align 4
  %170 = load i32, i32* @S_OK, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %2, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i8*, i8** @VT_LPWSTR, align 8
  %178 = icmp eq i8* %176, %177
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @lstrcmpW(i8* %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.test_stringW, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %191 = call i32 @PropVariantClear(%struct.TYPE_10__* %7)
  %192 = load i32*, i32** %1, align 8
  %193 = call i32 @IMimeInternational_Release(i32* %192)
  ret void
}

declare dso_local i32 @MimeOleGetInternat(i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IMimeInternational_ConvertBuffer(i32*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IMimeInternational_ConvertString(i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_10__*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @IMimeInternational_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
