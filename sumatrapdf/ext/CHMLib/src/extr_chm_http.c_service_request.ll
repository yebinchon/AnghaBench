; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_service_request.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_service_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"chm_http: failed to fdopen client stream\00", align 1
@INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@CONTENT_500 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.chmFile*)* @service_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_request(i32 %0, %struct.chmFile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chmFile*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.chmFile* %1, %struct.chmFile** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @fdopen(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @INTERNAL_ERROR, align 4
  %17 = load i32, i32* @INTERNAL_ERROR, align 4
  %18 = call i32 @strlen(i32 %17)
  %19 = call i32 @write(i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @close(i32 %20)
  br label %74

22:                                               ; preds = %2
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @fgets(i8* %23, i32 4096, i32* %24)
  br label %26

26:                                               ; preds = %22, %48
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @fgets(i8* %27, i32 4096, i32* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %49

32:                                               ; preds = %26
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 13
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %32
  br label %49

48:                                               ; preds = %42
  br label %26

49:                                               ; preds = %47, %31
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %51 = call i8* @strrchr(i8* %50, i8 signext 32)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i64 @strncmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %49
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load %struct.chmFile*, %struct.chmFile** %4, align 8
  %67 = call i32 @deliver_content(i32* %63, i8* %65, %struct.chmFile* %66)
  br label %74

68:                                               ; preds = %58
  %69 = load i32*, i32** %8, align 8
  %70 = load i8*, i8** @CONTENT_500, align 8
  %71 = call i32 @fprintf(i32* %69, i8* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @fclose(i32* %72)
  br label %74

74:                                               ; preds = %13, %68, %62
  ret void
}

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @deliver_content(i32*, i8*, %struct.chmFile*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
