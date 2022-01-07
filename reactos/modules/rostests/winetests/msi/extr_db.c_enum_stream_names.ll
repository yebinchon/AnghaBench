; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_enum_stream_names.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_enum_stream_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@database_table_data = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Expected table %d name to match\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Expected non-NULL stream\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Expected %d, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"data should not be changed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Expected table %d data to match\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Expected 3, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @enum_stream_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_stream_names(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = call i32 @memset(i32* %19, i8 signext 97, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @IStorage_EnumElements(i32* %22, i32 0, i32* null, i32 0, i32** %3)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %5, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %135, %1
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %140

33:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @IEnumSTATSTG_Next(i32* %34, i32 1, %struct.TYPE_4__* %6, i64* %8)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @FAILED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %33
  br label %140

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @database_table_data, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @lstrcmpW(i32 %45, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %7, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  store i32* null, i32** %4, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @STGM_READ, align 4
  %61 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @IStorage_OpenStream(i32* %57, i32 %59, i32* null, i32 %62, i32 0, i32** %4)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CoTaskMemFree(i32 %75)
  %77 = load i32, i32* @MAX_PATH, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @MAX_PATH, align 4
  %79 = call i32 @memset(i32* %16, i8 signext 97, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @IStream_Read(i32* %80, i32* %16, i32 %81, i64* %8)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @database_table_data, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %89, %94
  %96 = zext i1 %95 to i32
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @database_table_data, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %101, i64 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @database_table_data, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %43
  %111 = load i32, i32* @MAX_PATH, align 4
  %112 = call i32 @memcmp(i32* %16, i32* %19, i32 %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %135

117:                                              ; preds = %43
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @database_table_data, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** @database_table_data, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memcmp(i32* %16, i32* %122, i32 %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load i64, i64* %7, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %117, %110
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @IStream_Release(i32* %136)
  %138 = load i64, i64* %7, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %7, align 8
  br label %30

140:                                              ; preds = %42, %30
  %141 = load i64, i64* %7, align 8
  %142 = icmp eq i64 %141, 3
  %143 = zext i1 %142 to i32
  %144 = load i64, i64* %7, align 8
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @IEnumSTATSTG_Release(i32* %146)
  %148 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i64 @IStorage_EnumElements(i32*, i32, i32*, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @IEnumSTATSTG_Next(i32*, i32, %struct.TYPE_4__*, i64*) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i32 @lstrcmpW(i32, i32) #2

declare dso_local i64 @IStorage_OpenStream(i32*, i32, i32*, i32, i32, i32**) #2

declare dso_local i32 @CoTaskMemFree(i32) #2

declare dso_local i64 @IStream_Read(i32*, i32*, i32, i64*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @IStream_Release(i32*) #2

declare dso_local i32 @IEnumSTATSTG_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
