; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__lwrite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__lwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@HFILE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"couldn't create file \22%s\22 (err=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"_hwrite complains\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"_lclose complains\0A\00", align 1
@OF_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"file read size error\0A\00", align 1
@OF_READWRITE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"LocalAlloc fails, could be out of memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"LocalLock whines\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"read length differ from write length\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"stored checksum differ from computed checksum\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"DeleteFile failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__lwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__lwrite() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [10000 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x i8], align 1
  %10 = alloca i32, align 4
  %11 = load i32, i32* @filename, align 4
  %12 = call i64 @_lcreat(i32 %11, i32 0)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @HFILE_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @filename, align 4
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %183

20:                                               ; preds = %0
  %21 = load i64, i64* @HFILE_ERROR, align 8
  %22 = load i64, i64* %1, align 8
  %23 = call i64 @_lwrite(i64 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %24 = icmp ne i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i64, i64* @HFILE_ERROR, align 8
  %28 = load i64, i64* %1, align 8
  %29 = call i64 @_lclose(i64 %28)
  %30 = icmp ne i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @filename, align 4
  %34 = load i32, i32* @OF_READ, align 4
  %35 = call i64 @_lopen(i32 %33, i32 %34)
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0
  %38 = call i64 @_hread(i64 %36, i8* %37, i64 1)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp eq i64 0, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i64, i64* @HFILE_ERROR, align 8
  %44 = load i64, i64* %1, align 8
  %45 = call i64 @_lclose(i64 %44)
  %46 = icmp ne i64 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @filename, align 4
  %50 = load i32, i32* @OF_READWRITE, align 4
  %51 = call i64 @_lopen(i32 %49, i32 %50)
  store i64 %51, i64* %1, align 8
  store i64 0, i64* %4, align 8
  %52 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %52, align 1
  %53 = call i64 @time(i32* null)
  %54 = trunc i64 %53 to i32
  %55 = call i32 @srand(i32 %54)
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %90, %20
  %57 = load i64, i64* %5, align 8
  %58 = icmp slt i64 %57, 100
  br i1 %58, label %59, label %93

59:                                               ; preds = %56
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %61, 10000
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = call signext i8 (...) @rand()
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 %65
  store i8 %64, i8* %66, align 1
  %67 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %69, %73
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  store i8 %75, i8* %76, align 1
  br label %77

77:                                               ; preds = %63
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %60

80:                                               ; preds = %60
  %81 = load i64, i64* @HFILE_ERROR, align 8
  %82 = load i64, i64* %1, align 8
  %83 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0
  %84 = call i64 @_lwrite(i64 %82, i8* %83, i32 10000)
  %85 = icmp ne i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i64, i64* %4, align 8
  %89 = add i64 %88, 10000
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i64, i64* %5, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %56

93:                                               ; preds = %56
  %94 = load i64, i64* @HFILE_ERROR, align 8
  %95 = load i64, i64* %1, align 8
  %96 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %97 = call i64 @_lwrite(i64 %95, i8* %96, i32 1)
  %98 = icmp ne i64 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i64, i64* %4, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* @HFILE_ERROR, align 8
  %104 = load i64, i64* %1, align 8
  %105 = call i64 @_lclose(i64 %104)
  %106 = icmp ne i64 %103, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @LPTR, align 4
  %110 = load i64, i64* %4, align 8
  %111 = call i64 @LocalAlloc(i32 %109, i64 %110)
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = icmp ne i64 0, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i64, i64* %8, align 8
  %117 = call i8* @LocalLock(i64 %116)
  store i8* %117, i8** %7, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = icmp ne i8* null, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* @filename, align 4
  %123 = load i32, i32* @OF_READ, align 4
  %124 = call i64 @_lopen(i32 %122, i32 %123)
  store i64 %124, i64* %1, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i8* @LocalLock(i64 %125)
  store i8* %126, i8** %7, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = icmp ne i8* null, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* %1, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i64, i64* %4, align 8
  %135 = call i64 @_hread(i64 %132, i8* %133, i64 %134)
  %136 = icmp eq i64 %131, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %139 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %139, align 1
  store i64 0, i64* %6, align 8
  br label %140

140:                                              ; preds = %153, %93
  %141 = load i8*, i8** %7, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = add nsw i32 %148, %145
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %6, align 8
  br label %153

153:                                              ; preds = %140
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* %4, align 8
  %156 = sub nsw i64 %155, 1
  %157 = icmp ult i64 %154, %156
  br i1 %157, label %140, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load i8*, i8** %7, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %161, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  %170 = load i64, i64* @HFILE_ERROR, align 8
  %171 = load i64, i64* %1, align 8
  %172 = call i64 @_lclose(i64 %171)
  %173 = icmp ne i64 %170, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i32, i32* @filename, align 4
  %177 = call i32 @DeleteFileA(i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 (...) @GetLastError()
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %179)
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @LocalFree(i8* %181)
  br label %183

183:                                              ; preds = %158, %16
  ret void
}

declare dso_local i64 @_lcreat(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @_lwrite(i64, i8*, i32) #1

declare dso_local i64 @_lclose(i64) #1

declare dso_local i64 @_lopen(i32, i32) #1

declare dso_local i64 @_hread(i64, i8*, i64) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local signext i8 @rand(...) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i8* @LocalLock(i64) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
