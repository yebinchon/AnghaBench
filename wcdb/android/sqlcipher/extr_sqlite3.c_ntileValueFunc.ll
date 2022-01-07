; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_ntileValueFunc.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_ntileValueFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NtileCtx = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ntileValueFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntileValueFunc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.NtileCtx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @sqlite3_aggregate_context(i32* %8, i32 12)
  %10 = inttoptr i64 %9 to %struct.NtileCtx*
  store %struct.NtileCtx* %10, %struct.NtileCtx** %3, align 8
  %11 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %12 = icmp ne %struct.NtileCtx* %11, null
  br i1 %12, label %13, label %94

13:                                               ; preds = %1
  %14 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %15 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %94

18:                                               ; preds = %13
  %19 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %20 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %23 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %31 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sqlite3_result_int64(i32* %29, i32 %32)
  br label %93

34:                                               ; preds = %18
  %35 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %36 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %39 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sub nsw i32 %37, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  %47 = mul nsw i32 %44, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %49 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %52, %54
  %56 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %57 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %60, %61
  %63 = add nsw i32 %55, %62
  %64 = load %struct.NtileCtx*, %struct.NtileCtx** %3, align 8
  %65 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %34
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  %78 = sdiv i32 %75, %77
  %79 = add nsw i32 1, %78
  %80 = call i32 @sqlite3_result_int64(i32* %74, i32 %79)
  br label %92

81:                                               ; preds = %34
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 1, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %4, align 4
  %89 = sdiv i32 %87, %88
  %90 = add nsw i32 %84, %89
  %91 = call i32 @sqlite3_result_int64(i32* %82, i32 %90)
  br label %92

92:                                               ; preds = %81, %73
  br label %93

93:                                               ; preds = %92, %28
  br label %94

94:                                               ; preds = %93, %13, %1
  ret void
}

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
