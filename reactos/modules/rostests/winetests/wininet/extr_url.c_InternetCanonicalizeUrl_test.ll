; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_url.c_InternetCanonicalizeUrl_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_url.c_InternetCanonicalizeUrl_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.InternetCanonicalizeUrl_test.src = private unnamed_addr constant [37 x i8] c"http://www.winehq.org/%27/ /./>/#>  \00", align 16
@.str = private unnamed_addr constant [37 x i8] c"http://www.winehq.org/%27/%20/%3E/#>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Got \22%s\22\0A\00", align 1
@ICU_BROWSER_MODE = common dso_local global i32 0, align 4
@ICU_ESCAPE = common dso_local global i32 0, align 4
@ICU_DECODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"http://www.winehq.org/'/%20/%3E/#>\00", align 1
@ICU_ENCODE_PERCENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"http://www.winehq.org/%2527/%20/%3E/#>\00", align 1
@ICU_ENCODE_SPACES_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"http://www.winehq.org/%27/%20/>/#>\00", align 1
@ICU_NO_ENCODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"http://www.winehq.org/%27/ />/#>\00", align 1
@ICU_NO_META = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"http://www.winehq.org/%27/%20/./%3E/#>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetCanonicalizeUrl_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetCanonicalizeUrl_test() #0 {
  %1 = alloca [37 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = bitcast [37 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.InternetCanonicalizeUrl_test.src, i32 0, i32 0), i64 37, i1 false)
  store i32 64, i32* %3, align 4
  %5 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %7 = call i32 @InternetCanonicalizeUrlA(i8* %5, i8* %6, i32* %3, i32 0)
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i32 64, i32* %3, align 4
  %14 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %16 = load i32, i32* @ICU_BROWSER_MODE, align 4
  %17 = call i32 @InternetCanonicalizeUrlA(i8* %14, i8* %15, i32* %3, i32 %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 64, i32* %3, align 4
  %24 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %26 = load i32, i32* @ICU_ESCAPE, align 4
  %27 = call i32 @InternetCanonicalizeUrlA(i8* %24, i8* %25, i32* %3, i32 %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  store i32 64, i32* %3, align 4
  %34 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %36 = load i32, i32* @ICU_DECODE, align 4
  %37 = call i32 @InternetCanonicalizeUrlA(i8* %34, i8* %35, i32* %3, i32 %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 64, i32* %3, align 4
  %44 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %46 = load i32, i32* @ICU_ENCODE_PERCENT, align 4
  %47 = call i32 @InternetCanonicalizeUrlA(i8* %44, i8* %45, i32* %3, i32 %46)
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i32 64, i32* %3, align 4
  %54 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %56 = load i32, i32* @ICU_ENCODE_SPACES_ONLY, align 4
  %57 = call i32 @InternetCanonicalizeUrlA(i8* %54, i8* %55, i32* %3, i32 %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  store i32 64, i32* %3, align 4
  %64 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %66 = load i32, i32* @ICU_NO_ENCODE, align 4
  %67 = call i32 @InternetCanonicalizeUrlA(i8* %64, i8* %65, i32* %3, i32 %66)
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  store i32 64, i32* %3, align 4
  %74 = getelementptr inbounds [37 x i8], [37 x i8]* %1, i64 0, i64 0
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %76 = load i32, i32* @ICU_NO_META, align 4
  %77 = call i32 @InternetCanonicalizeUrlA(i8* %74, i8* %75, i32* %3, i32 %76)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @InternetCanonicalizeUrlA(i8*, i8*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
