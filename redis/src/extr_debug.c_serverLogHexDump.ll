; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c_serverLogHexDump.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c_serverLogHexDump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.serverLogHexDump.charset = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str = private unnamed_addr constant [27 x i8] c"%s (hexdump of %zu bytes):\00", align 1
@LL_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serverLogHexDump(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [65 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [17 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %11, align 8
  %14 = bitcast [17 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.serverLogHexDump.charset, i32 0, i32 0), i64 17, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @serverLog(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %17)
  %19 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  store i8* %19, i8** %10, align 8
  br label %20

20:                                               ; preds = %66, %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %30, i8* %32, align 1
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %10, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %8, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = icmp eq i64 %54, 64
  br i1 %55, label %59, label %56

56:                                               ; preds = %23
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %23
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @LL_RAW, align 4
  %62 = or i32 %60, %61
  %63 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %64 = call i32 @serverLogRaw(i32 %62, i8* %63)
  %65 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %59, %56
  br label %20

67:                                               ; preds = %20
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @LL_RAW, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @serverLogRaw(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @serverLog(i32, i8*, i8*, i64) #2

declare dso_local i32 @serverLogRaw(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
