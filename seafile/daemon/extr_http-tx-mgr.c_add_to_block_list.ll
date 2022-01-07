; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_add_to_block_list.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_add_to_block_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i8*)* @add_to_block_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_block_list(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @g_hash_table_lookup(i32* %8, i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %24

13:                                               ; preds = %3
  %14 = load i32**, i32*** %4, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @g_strdup(i8* %16)
  %18 = call i32* @g_list_prepend(i32* %15, i32 %17)
  %19 = load i32**, i32*** %4, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @g_strdup(i8* %21)
  %23 = call i32 @g_hash_table_insert(i32* %20, i32 %22, i32* %7)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @g_hash_table_lookup(i32*, i8*) #1

declare dso_local i32* @g_list_prepend(i32*, i32) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @g_hash_table_insert(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
