; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_sltg_add_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_sltg_add_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { i32, i32, %struct.sltg_block* }
%struct.sltg_block = type { i32, %struct.sltg_block*, i64, i8* }

@.str = private unnamed_addr constant [29 x i8] c"sltg_add_typeinfo: %p,%d,%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_typelib*, i8*, i32, i8*)* @sltg_add_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sltg_add_typeinfo(%struct.sltg_typelib* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sltg_typelib*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sltg_block*, align 8
  %10 = alloca %struct.sltg_block*, align 8
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = call %struct.sltg_block* @xmalloc(i32 32)
  store %struct.sltg_block* %11, %struct.sltg_block** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @chat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i8* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.sltg_block*, %struct.sltg_block** %9, align 8
  %18 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.sltg_block*, %struct.sltg_block** %9, align 8
  %21 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.sltg_block*, %struct.sltg_block** %9, align 8
  %23 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.sltg_block*, %struct.sltg_block** %9, align 8
  %25 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %24, i32 0, i32 1
  store %struct.sltg_block* null, %struct.sltg_block** %25, align 8
  %26 = load %struct.sltg_typelib*, %struct.sltg_typelib** %5, align 8
  %27 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %26, i32 0, i32 2
  %28 = load %struct.sltg_block*, %struct.sltg_block** %27, align 8
  %29 = icmp ne %struct.sltg_block* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %4
  %31 = load %struct.sltg_typelib*, %struct.sltg_typelib** %5, align 8
  %32 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %31, i32 0, i32 2
  %33 = load %struct.sltg_block*, %struct.sltg_block** %32, align 8
  store %struct.sltg_block* %33, %struct.sltg_block** %10, align 8
  br label %34

34:                                               ; preds = %39, %30
  %35 = load %struct.sltg_block*, %struct.sltg_block** %10, align 8
  %36 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %35, i32 0, i32 1
  %37 = load %struct.sltg_block*, %struct.sltg_block** %36, align 8
  %38 = icmp ne %struct.sltg_block* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.sltg_block*, %struct.sltg_block** %10, align 8
  %41 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %40, i32 0, i32 1
  %42 = load %struct.sltg_block*, %struct.sltg_block** %41, align 8
  store %struct.sltg_block* %42, %struct.sltg_block** %10, align 8
  br label %34

43:                                               ; preds = %34
  %44 = load %struct.sltg_block*, %struct.sltg_block** %9, align 8
  %45 = load %struct.sltg_block*, %struct.sltg_block** %10, align 8
  %46 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %45, i32 0, i32 1
  store %struct.sltg_block* %44, %struct.sltg_block** %46, align 8
  br label %51

47:                                               ; preds = %4
  %48 = load %struct.sltg_block*, %struct.sltg_block** %9, align 8
  %49 = load %struct.sltg_typelib*, %struct.sltg_typelib** %5, align 8
  %50 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %49, i32 0, i32 2
  store %struct.sltg_block* %48, %struct.sltg_block** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.sltg_typelib*, %struct.sltg_typelib** %5, align 8
  %53 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.sltg_typelib*, %struct.sltg_typelib** %5, align 8
  %58 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  ret void
}

declare dso_local %struct.sltg_block* @xmalloc(i32) #1

declare dso_local i32 @chat(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
