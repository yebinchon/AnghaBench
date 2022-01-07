; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_bitmap_find.c_nodeForColor.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_bitmap_find.c_nodeForColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shiftNode = type { i32 }
%struct.TYPE_3__ = type { %struct.shiftNode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shiftNode* (%struct.TYPE_3__*, i32)* @nodeForColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shiftNode* @nodeForColor(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.shiftNode*, align 8
  %6 = alloca %struct.shiftNode*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.shiftNode*, %struct.shiftNode** %8, align 8
  store %struct.shiftNode* %9, %struct.shiftNode** %5, align 8
  %10 = load %struct.shiftNode*, %struct.shiftNode** %5, align 8
  %11 = load %struct.shiftNode*, %struct.shiftNode** %6, align 8
  %12 = call i32 @HASH_FIND_INT(%struct.shiftNode* %10, i32* %4, %struct.shiftNode* %11)
  %13 = load %struct.shiftNode*, %struct.shiftNode** %6, align 8
  ret %struct.shiftNode* %13
}

declare dso_local i32 @HASH_FIND_INT(%struct.shiftNode*, i32*, %struct.shiftNode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
