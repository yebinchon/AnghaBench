; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_copy.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c_string_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string = type { i64, i8* }

@NC_ENOMEM = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_copy(%struct.string* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.string* %0, %struct.string** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.string*, %struct.string** %5, align 8
  %9 = getelementptr inbounds %struct.string, %struct.string* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.string*, %struct.string** %5, align 8
  %14 = getelementptr inbounds %struct.string, %struct.string* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ false, %3 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i8* @nc_strndup(i32* %30, i64 %32)
  %34 = load %struct.string*, %struct.string** %5, align 8
  %35 = getelementptr inbounds %struct.string, %struct.string* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.string*, %struct.string** %5, align 8
  %37 = getelementptr inbounds %struct.string, %struct.string* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %54

42:                                               ; preds = %26
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.string*, %struct.string** %5, align 8
  %45 = getelementptr inbounds %struct.string, %struct.string* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.string*, %struct.string** %5, align 8
  %47 = getelementptr inbounds %struct.string, %struct.string* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.string*, %struct.string** %5, align 8
  %50 = getelementptr inbounds %struct.string, %struct.string* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* @NC_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %42, %40
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @nc_strndup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
