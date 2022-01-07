; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_https_connect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_connmgr.c_vlc_https_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"h2\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"http/1.1\00", align 1
@__const.vlc_https_connect.alpn = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"https\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_https_connect(i32* %0, i8* %1, i32 %2, i32* noalias %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 443, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = bitcast [3 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([3 x i8*]* @__const.vlc_https_connect.alpn to i8*), i64 24, i1 false)
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %20, i64 %26
  %28 = call i32* @vlc_tls_SocketOpenTLS(i32* %17, i8* %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %27, i8** %10)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %15
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %39, %15
  %46 = load i32*, i32** %11, align 8
  ret i32* %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @vlc_tls_SocketOpenTLS(i32*, i8*, i32, i8*, i8**, i8**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
