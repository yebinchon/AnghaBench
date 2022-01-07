; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_str_array_get_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_str_array_get_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32, i32, i8** }

@.str = private unnamed_addr constant [33 x i8] c"Out of bounds: %p %d + %d >= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Returning %p[%d] => %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.array*, i32)* @str_array_get_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @str_array_get_ref(%struct.array* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.array*, align 8
  %5 = alloca i32, align 4
  store %struct.array* %0, %struct.array** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.array*, %struct.array** %4, align 8
  %7 = call i32 @assert(%struct.array* %6)
  %8 = load %struct.array*, %struct.array** %4, align 8
  %9 = getelementptr inbounds %struct.array, %struct.array* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %10, %11
  %13 = load %struct.array*, %struct.array** %4, align 8
  %14 = getelementptr inbounds %struct.array, %struct.array* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.array*, %struct.array** %4, align 8
  %19 = load %struct.array*, %struct.array** %4, align 8
  %20 = getelementptr inbounds %struct.array, %struct.array* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.array*, %struct.array** %4, align 8
  %24 = getelementptr inbounds %struct.array, %struct.array* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.array* %18, i32 %21, i32 %22, i32 %25)
  store i8* null, i8** %3, align 8
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.array*, %struct.array** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.array*, %struct.array** %4, align 8
  %31 = getelementptr inbounds %struct.array, %struct.array* %30, i32 0, i32 2
  %32 = load i8**, i8*** %31, align 8
  %33 = load %struct.array*, %struct.array** %4, align 8
  %34 = getelementptr inbounds %struct.array, %struct.array* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %32, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @debugstr_a(i8* %40)
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.array* %28, i32 %29, i32 %41)
  %43 = load %struct.array*, %struct.array** %4, align 8
  %44 = getelementptr inbounds %struct.array, %struct.array* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.array*, %struct.array** %4, align 8
  %47 = getelementptr inbounds %struct.array, %struct.array* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %45, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %27, %17
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i32 @assert(%struct.array*) #1

declare dso_local i32 @WARN(i8*, %struct.array*, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.array*, i32, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
