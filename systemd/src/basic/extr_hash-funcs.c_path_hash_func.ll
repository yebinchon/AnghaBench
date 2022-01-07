; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hash-funcs.c_path_hash_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hash-funcs.c_path_hash_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash = type opaque

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @path_hash_func(i8* %0, %struct.siphash* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.siphash*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.siphash* %1, %struct.siphash** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = load %struct.siphash*, %struct.siphash** %4, align 8
  %9 = bitcast %struct.siphash* %8 to i8*
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strspn(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.siphash*, %struct.siphash** %4, align 8
  %18 = bitcast %struct.siphash* %17 to i8*
  %19 = call i32 @siphash24_compress(i8* %16, i32 1, i8* %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %15, %2
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strcspn(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.siphash*, %struct.siphash** %4, align 8
  %35 = bitcast %struct.siphash* %34 to i8*
  %36 = call i32 @siphash24_compress(i8* %31, i32 %33, i8* %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strspn(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %41, i64* %5, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %57

49:                                               ; preds = %30
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.siphash*, %struct.siphash** %4, align 8
  %52 = bitcast %struct.siphash* %51 to i8*
  %53 = call i32 @siphash24_compress(i8* %50, i32 1, i8* %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %3, align 8
  br label %24

57:                                               ; preds = %48, %29
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @siphash24_compress(i8*, i32, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
