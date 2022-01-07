; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_block.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { i32 }
%struct.sltg_block = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"add_block: %p,%d,\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_typelib*, i8*, i32, i8*)* @add_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_block(%struct.sltg_typelib* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sltg_typelib*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sltg_block*, align 8
  %10 = alloca i32, align 4
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = call %struct.sltg_block* @xmalloc(i32 4)
  store %struct.sltg_block* %11, %struct.sltg_block** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @chat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i8* %14)
  %16 = load %struct.sltg_typelib*, %struct.sltg_typelib** %5, align 8
  %17 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %16, i32 0, i32 0
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @add_index(i32* %17, i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sltg_typelib*, %struct.sltg_typelib** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @add_block_index(%struct.sltg_typelib* %20, i8* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local %struct.sltg_block* @xmalloc(i32) #1

declare dso_local i32 @chat(i8*, i8*, i32, i8*) #1

declare dso_local i32 @add_index(i32*, i8*) #1

declare dso_local i32 @add_block_index(%struct.sltg_typelib*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
