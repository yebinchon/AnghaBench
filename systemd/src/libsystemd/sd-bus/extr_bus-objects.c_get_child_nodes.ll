; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-objects.c_get_child_nodes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-objects.c_get_child_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type opaque

@string_hash_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, %struct.node*, i32, i32**, i32*)* @get_child_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_child_nodes(i32** %0, i8* %1, %struct.node* %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.node* %2, %struct.node** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load i32**, i32*** %8, align 8
  %17 = bitcast i32** %16 to i8*
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load %struct.node*, %struct.node** %10, align 8
  %22 = bitcast %struct.node* %21 to i8*
  %23 = call i32 @assert(i8* %22)
  %24 = load i32**, i32*** %12, align 8
  %25 = bitcast i32** %24 to i8*
  %26 = call i32 @assert(i8* %25)
  %27 = call i32* @set_new(i32* @string_hash_ops)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %51

33:                                               ; preds = %6
  %34 = load i32**, i32*** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.node*, %struct.node** %10, align 8
  %37 = bitcast %struct.node* %36 to i32**
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @add_subtree_to_set(i32** %34, i8* %35, i32** %37, i32 %38, i32* %39, i32* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @set_free_free(i32* %45)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %33
  %49 = load i32*, i32** %14, align 8
  %50 = load i32**, i32*** %12, align 8
  store i32* %49, i32** %50, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %44, %30
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32* @set_new(i32*) #1

declare dso_local i32 @add_subtree_to_set(i32**, i8*, i32**, i32, i32*, i32*) #1

declare dso_local i32 @set_free_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
