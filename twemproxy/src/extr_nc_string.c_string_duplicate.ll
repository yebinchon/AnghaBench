; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_duplicate.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i64, i8* }

@NC_ENOMEM = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_duplicate(%struct.string* %0, %struct.string* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string*, align 8
  %5 = alloca %struct.string*, align 8
  store %struct.string* %0, %struct.string** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  %6 = load %struct.string*, %struct.string** %4, align 8
  %7 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.string*, %struct.string** %4, align 8
  %12 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.string*, %struct.string** %5, align 8
  %20 = getelementptr inbounds %struct.string, %struct.string* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.string*, %struct.string** %5, align 8
  %25 = getelementptr inbounds %struct.string, %struct.string* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %23, %15
  %29 = phi i1 [ false, %15 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.string*, %struct.string** %5, align 8
  %33 = getelementptr inbounds %struct.string, %struct.string* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.string*, %struct.string** %5, align 8
  %36 = getelementptr inbounds %struct.string, %struct.string* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i8* @nc_strndup(i8* %34, i64 %38)
  %40 = load %struct.string*, %struct.string** %4, align 8
  %41 = getelementptr inbounds %struct.string, %struct.string* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.string*, %struct.string** %4, align 8
  %43 = getelementptr inbounds %struct.string, %struct.string* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %28
  %49 = load %struct.string*, %struct.string** %5, align 8
  %50 = getelementptr inbounds %struct.string, %struct.string* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.string*, %struct.string** %4, align 8
  %53 = getelementptr inbounds %struct.string, %struct.string* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.string*, %struct.string** %4, align 8
  %55 = getelementptr inbounds %struct.string, %struct.string* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.string*, %struct.string** %4, align 8
  %58 = getelementptr inbounds %struct.string, %struct.string* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* @NC_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %48, %46
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @nc_strndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
