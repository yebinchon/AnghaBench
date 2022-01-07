; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_sltg_write_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_sltg_write_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { i16, %struct.sltg_block* }
%struct.sltg_block = type { i32, i16*, %struct.sltg_block* }

@.str = private unnamed_addr constant [49 x i8] c"sltg_write_typeinfo: writing block %d: %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_typelib*)* @sltg_write_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sltg_write_typeinfo(%struct.sltg_typelib* %0) #0 {
  %2 = alloca %struct.sltg_typelib*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sltg_block*, align 8
  %5 = alloca i16, align 2
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %2, align 8
  %6 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %7 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 8
  store i16 %8, i16* %5, align 2
  %9 = call i32 @put_data(i16* %5, i32 2)
  %10 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %11 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %10, i32 0, i32 1
  %12 = load %struct.sltg_block*, %struct.sltg_block** %11, align 8
  store %struct.sltg_block* %12, %struct.sltg_block** %4, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.sltg_typelib*, %struct.sltg_typelib** %2, align 8
  %16 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i32
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.sltg_block*, %struct.sltg_block** %4, align 8
  %23 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @chat(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.sltg_block*, %struct.sltg_block** %4, align 8
  %27 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %26, i32 0, i32 1
  %28 = load i16*, i16** %27, align 8
  %29 = load %struct.sltg_block*, %struct.sltg_block** %4, align 8
  %30 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @put_data(i16* %28, i32 %31)
  %33 = load %struct.sltg_block*, %struct.sltg_block** %4, align 8
  %34 = getelementptr inbounds %struct.sltg_block, %struct.sltg_block* %33, i32 0, i32 2
  %35 = load %struct.sltg_block*, %struct.sltg_block** %34, align 8
  store %struct.sltg_block* %35, %struct.sltg_block** %4, align 8
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.sltg_block*, %struct.sltg_block** %4, align 8
  %41 = icmp eq %struct.sltg_block* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  ret void
}

declare dso_local i32 @put_data(i16*, i32) #1

declare dso_local i32 @chat(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
