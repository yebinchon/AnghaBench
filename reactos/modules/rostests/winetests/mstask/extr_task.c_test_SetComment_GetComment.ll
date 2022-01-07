; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetComment_GetComment.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetComment_GetComment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SetComment_GetComment.comment_a = private unnamed_addr constant [9 x i8] c"Comment.\00", align 1
@__const.test_SetComment_GetComment.comment_b = private unnamed_addr constant [16 x i8] c"Longer comment.\00", align 16
@.str = private unnamed_addr constant [27 x i8] c"Failed to setup test_task\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to create task.  Skipping tests.\0A\00", align 1
@test_task = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"GetComment failed: %08x\0A\00", align 1
@empty = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Got %s, expected empty string\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed setting comment %s: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Got %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetComment_GetComment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetComment_GetComment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [9 x i8], align 1
  %5 = alloca [16 x i8], align 16
  %6 = bitcast [9 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_SetComment_GetComment.comment_a, i32 0, i32 0), i64 9, i1 false)
  %7 = bitcast [16 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_SetComment_GetComment.comment_b, i32 0, i32 0), i64 16, i1 false)
  %8 = call i32 (...) @setup_task()
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %150

15:                                               ; preds = %0
  %16 = load i32, i32* @test_task, align 4
  %17 = call i64 @ITask_GetComment(i32 %16, i8** %3)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %2, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** @empty, align 8
  %30 = call i32 @lstrcmpW(i8* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @wine_dbgstr_w(i8* %34)
  %36 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @CoTaskMemFree(i8* %37)
  br label %39

39:                                               ; preds = %27, %15
  %40 = load i32, i32* @test_task, align 4
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %42 = call i64 @ITask_SetComment(i32 %40, i8* %41)
  store i64 %42, i64* %2, align 8
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %48 = call i64 @wine_dbgstr_w(i8* %47)
  %49 = load i64, i64* %2, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %48, i64 %49)
  %51 = load i32, i32* @test_task, align 4
  %52 = call i64 @ITask_GetComment(i32 %51, i8** %3)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %2, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %39
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %65 = call i32 @lstrcmpW(i8* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @wine_dbgstr_w(i8* %69)
  %71 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %72 = call i64 @wine_dbgstr_w(i8* %71)
  %73 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %70, i64 %72)
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @CoTaskMemFree(i8* %74)
  br label %76

76:                                               ; preds = %62, %39
  %77 = load i32, i32* @test_task, align 4
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %79 = call i64 @ITask_SetComment(i32 %77, i8* %78)
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* %2, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %85 = call i64 @wine_dbgstr_w(i8* %84)
  %86 = load i64, i64* %2, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %85, i64 %86)
  %88 = load i32, i32* @test_task, align 4
  %89 = call i64 @ITask_GetComment(i32 %88, i8** %3)
  store i64 %89, i64* %2, align 8
  %90 = load i64, i64* %2, align 8
  %91 = load i64, i64* @S_OK, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %2, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* @S_OK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %76
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %102 = call i32 @lstrcmpW(i8* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i8*, i8** %3, align 8
  %107 = call i64 @wine_dbgstr_w(i8* %106)
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %109 = call i64 @wine_dbgstr_w(i8* %108)
  %110 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %107, i64 %109)
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 @CoTaskMemFree(i8* %111)
  br label %113

113:                                              ; preds = %99, %76
  %114 = load i32, i32* @test_task, align 4
  %115 = load i8*, i8** @empty, align 8
  %116 = call i64 @ITask_SetComment(i32 %114, i8* %115)
  store i64 %116, i64* %2, align 8
  %117 = load i64, i64* %2, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i8*, i8** @empty, align 8
  %122 = call i64 @wine_dbgstr_w(i8* %121)
  %123 = load i64, i64* %2, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %122, i64 %123)
  %125 = load i32, i32* @test_task, align 4
  %126 = call i64 @ITask_GetComment(i32 %125, i8** %3)
  store i64 %126, i64* %2, align 8
  %127 = load i64, i64* %2, align 8
  %128 = load i64, i64* @S_OK, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i64, i64* %2, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %2, align 8
  %134 = load i64, i64* @S_OK, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %113
  %137 = load i8*, i8** %3, align 8
  %138 = load i8*, i8** @empty, align 8
  %139 = call i32 @lstrcmpW(i8* %137, i8* %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i8*, i8** %3, align 8
  %144 = call i64 @wine_dbgstr_w(i8* %143)
  %145 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %144)
  %146 = load i8*, i8** %3, align 8
  %147 = call i32 @CoTaskMemFree(i8* %146)
  br label %148

148:                                              ; preds = %136, %113
  %149 = call i32 (...) @cleanup_task()
  br label %150

150:                                              ; preds = %148, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_task(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @ITask_GetComment(i32, i8**) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i64 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @CoTaskMemFree(i8*) #2

declare dso_local i64 @ITask_SetComment(i32, i8*) #2

declare dso_local i32 @cleanup_task(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
