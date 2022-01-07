; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_dstrAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_dstrAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, i8*, i32)* @dstrAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstrAppend(%struct.dstr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.dstr*, %struct.dstr** %4, align 8
  %13 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 2
  %18 = load %struct.dstr*, %struct.dstr** %4, align 8
  %19 = getelementptr inbounds %struct.dstr, %struct.dstr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %3
  %23 = load %struct.dstr*, %struct.dstr** %4, align 8
  %24 = getelementptr inbounds %struct.dstr, %struct.dstr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 200
  %30 = load %struct.dstr*, %struct.dstr** %4, align 8
  %31 = getelementptr inbounds %struct.dstr, %struct.dstr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dstr*, %struct.dstr** %4, align 8
  %33 = getelementptr inbounds %struct.dstr, %struct.dstr* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.dstr*, %struct.dstr** %4, align 8
  %36 = getelementptr inbounds %struct.dstr, %struct.dstr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @sqlite3_realloc(i8* %34, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load %struct.dstr*, %struct.dstr** %4, align 8
  %43 = getelementptr inbounds %struct.dstr, %struct.dstr* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sqlite3_free(i8* %44)
  %46 = load %struct.dstr*, %struct.dstr** %4, align 8
  %47 = call i32 @memset(%struct.dstr* %46, i32 0, i32 16)
  br label %91

48:                                               ; preds = %22
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.dstr*, %struct.dstr** %4, align 8
  %51 = getelementptr inbounds %struct.dstr, %struct.dstr* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %3
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.dstr*, %struct.dstr** %4, align 8
  %57 = getelementptr inbounds %struct.dstr, %struct.dstr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = trunc i32 %61 to i8
  %63 = load %struct.dstr*, %struct.dstr** %4, align 8
  %64 = getelementptr inbounds %struct.dstr, %struct.dstr* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.dstr*, %struct.dstr** %4, align 8
  %67 = getelementptr inbounds %struct.dstr, %struct.dstr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  store i8 %62, i8* %71, align 1
  br label %72

72:                                               ; preds = %60, %55, %52
  %73 = load %struct.dstr*, %struct.dstr** %4, align 8
  %74 = getelementptr inbounds %struct.dstr, %struct.dstr* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.dstr*, %struct.dstr** %4, align 8
  %77 = getelementptr inbounds %struct.dstr, %struct.dstr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = bitcast i8* %80 to i32*
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @memcpy(i32* %81, i8* %82, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.dstr*, %struct.dstr** %4, align 8
  %88 = getelementptr inbounds %struct.dstr, %struct.dstr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %72, %41
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_realloc(i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @memset(%struct.dstr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
