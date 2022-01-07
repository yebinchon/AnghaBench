; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_deliver_content.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_deliver_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32 }
%struct.chmUnitInfo = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CHM_RESOLVE_SUCCESS = common dso_local global i64 0, align 8
@CONTENT_404 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"HTTP/1.1 200 OK\0D\0AConnection: close\0D\0AContent-Length: %d\0D\0AContent-Type: %s\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.chmFile*)* @deliver_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deliver_content(i32* %0, i8* %1, %struct.chmFile* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca %struct.chmUnitInfo, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [65536 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.chmFile* %2, %struct.chmFile** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %18 = call i32 @deliver_index(i32* %16, %struct.chmFile* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fclose(i32* %19)
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @chm_resolve_object(%struct.chmFile* %22, i8* %23, %struct.chmUnitInfo* %7)
  %25 = load i64, i64* @CHM_RESOLVE_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** @CONTENT_404, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fclose(i32* %31)
  br label %76

33:                                               ; preds = %21
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 46)
  store i8* %35, i8** %8, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @lookup_mime(i8* %39)
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %40)
  store i32 65536, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %59, %33
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp slt i32 %51, 65536
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %10, align 4
  br label %59

58:                                               ; preds = %47
  store i32 65536, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %61 = getelementptr inbounds [65536 x i8], [65536 x i8]* %9, i64 0, i64 0
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @chm_retrieve_object(%struct.chmFile* %60, %struct.chmUnitInfo* %7, i8* %61, i32 %62, i32 %63)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = getelementptr inbounds [65536 x i8], [65536 x i8]* %9, i64 0, i64 0
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @fwrite(i8* %69, i32 1, i32 %70, i32* %71)
  br label %42

73:                                               ; preds = %42
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @fclose(i32* %74)
  br label %76

76:                                               ; preds = %73, %27, %15
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @deliver_index(i32*, %struct.chmFile*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @chm_resolve_object(%struct.chmFile*, i8*, %struct.chmUnitInfo*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @lookup_mime(i8*) #1

declare dso_local i64 @chm_retrieve_object(%struct.chmFile*, %struct.chmUnitInfo*, i8*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
