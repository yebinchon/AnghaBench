; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_oleaut_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_oleaut_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @write_oleaut_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @write_oleaut_tfs(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 132, label %5
    i32 129, label %7
    i32 131, label %9
    i32 128, label %11
    i32 130, label %13
  ]

5:                                                ; preds = %1
  %6 = call zeroext i16 @get_tfs_offset(i32 0)
  store i16 %6, i16* %2, align 2
  br label %16

7:                                                ; preds = %1
  %8 = call zeroext i16 @get_tfs_offset(i32 1)
  store i16 %8, i16* %2, align 2
  br label %16

9:                                                ; preds = %1
  %10 = call zeroext i16 @get_tfs_offset(i32 2)
  store i16 %10, i16* %2, align 2
  br label %16

11:                                               ; preds = %1
  %12 = call zeroext i16 @get_tfs_offset(i32 3)
  store i16 %12, i16* %2, align 2
  br label %16

13:                                               ; preds = %1
  %14 = call zeroext i16 @get_tfs_offset(i32 4)
  store i16 %14, i16* %2, align 2
  br label %16

15:                                               ; preds = %1
  store i16 0, i16* %2, align 2
  br label %16

16:                                               ; preds = %15, %13, %11, %9, %7, %5
  %17 = load i16, i16* %2, align 2
  ret i16 %17
}

declare dso_local zeroext i16 @get_tfs_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
