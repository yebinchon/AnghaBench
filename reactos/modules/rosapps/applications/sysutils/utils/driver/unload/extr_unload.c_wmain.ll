; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/driver/unload/extr_unload.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/driver/unload/extr_unload.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [29 x i32] [i32 85, i32 115, i32 97, i32 103, i32 101, i32 58, i32 32, i32 117, i32 110, i32 108, i32 111, i32 97, i32 100, i32 32, i32 60, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 78, i32 97, i32 109, i32 101, i32 62, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [55 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 37, i32 83, i32 0], align 4
@.str.2 = private unnamed_addr constant [11 x i32] [i32 37, i32 115, i32 32, i32 37, i32 100, i32 32, i32 37, i32 85, i32 100, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 70, i32 97, i32 105, i32 108, i32 101, i32 100, i32 58, i32 32, i32 37, i32 88, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @wprintf(i8* bitcast ([29 x i32]* @.str to i8*))
  store i32 0, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @wcslen(i8* %15)
  %17 = add nsw i32 %16, 52
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @wsprintf(i8* %31, i8* bitcast ([55 x i32]* @.str.1 to i8*), i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @wcslen(i8* %41)
  %43 = call i32 (i8*, ...) @wprintf(i8* bitcast ([11 x i32]* @.str.2 to i8*), i8* %37, i32 %39, i32 %42)
  %44 = call i32 @NtUnloadDriver(%struct.TYPE_3__* %7)
  store i32 %44, i32* %6, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @NT_SUCCESS(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %12
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, ...) @wprintf(i8* bitcast ([12 x i32]* @.str.3 to i8*), i32 %52)
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %10
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @wsprintf(i8*, i8*, i8*) #1

declare dso_local i32 @NtUnloadDriver(%struct.TYPE_3__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
