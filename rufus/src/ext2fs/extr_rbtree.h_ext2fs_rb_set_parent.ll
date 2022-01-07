; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.h_ext2fs_rb_set_parent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.h_ext2fs_rb_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*, %struct.rb_node*)* @ext2fs_rb_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2fs_rb_set_parent(%struct.rb_node* %0, %struct.rb_node* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  store %struct.rb_node* %1, %struct.rb_node** %4, align 8
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %6 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %11 = ptrtoint %struct.rb_node* %10 to i64
  %12 = or i64 %9, %11
  %13 = trunc i64 %12 to i32
  %14 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %15 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
