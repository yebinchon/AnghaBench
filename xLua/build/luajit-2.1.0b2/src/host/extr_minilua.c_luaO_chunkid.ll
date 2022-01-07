; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaO_chunkid.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaO_chunkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @luaO_chunkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaO_chunkid(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 61
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @strncpy(i8* %14, i8* %16, i64 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 0, i8* %22, align 1
  br label %86

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 64
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, 8
  store i64 %32, i64* %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub i64 %41, %42
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strcat(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %40, %28
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcat(i8* %49, i8* %50)
  br label %85

52:                                               ; preds = %23
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcspn(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %55, 17
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %52
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strcpy(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @strncat(i8* %72, i8* %73, i64 %74)
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strcat(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %82

78:                                               ; preds = %62
  %79 = load i8*, i8** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @strcat(i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @strcat(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %48
  br label %86

86:                                               ; preds = %85, %13
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
