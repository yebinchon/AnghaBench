; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_create_frequently_used_atoms.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_create_frequently_used_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NUM_NETATOMS = common dso_local global i32 0, align 4
@xcb = common dso_local global %struct.TYPE_6__* null, align 8
@netatom_names = common dso_local global i32* null, align 8
@netatoms = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x11_create_frequently_used_atoms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_create_frequently_used_atoms() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %42, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NUM_NETATOMS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** @netatom_names, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = load i32*, i32** @netatom_names, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xcb_intern_atom(i32 %11, i32 0, i32 %17, i32 %22)
  store i32 %23, i32* %2, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xcb, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call %struct.TYPE_5__* @xcb_intern_atom_reply(i32 %26, i32 %27, i32* null)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @netatoms, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = call i32 @free(%struct.TYPE_5__* %39)
  br label %41

41:                                               ; preds = %31, %8
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %4

45:                                               ; preds = %4
  ret void
}

declare dso_local i32 @xcb_intern_atom(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.TYPE_5__* @xcb_intern_atom_reply(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
