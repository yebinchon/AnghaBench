; ModuleID = '/home/carl/AnghaBench/tmux/extr_environ.c_environ_clear.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_environ.c_environ_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ = type { i32 }
%struct.environ_entry = type { i32*, i32 }

@environ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @environ_clear(%struct.environ* %0, i8* %1) #0 {
  %3 = alloca %struct.environ*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.environ_entry*, align 8
  store %struct.environ* %0, %struct.environ** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.environ*, %struct.environ** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.environ_entry* @environ_find(%struct.environ* %6, i8* %7)
  store %struct.environ_entry* %8, %struct.environ_entry** %5, align 8
  %9 = icmp ne %struct.environ_entry* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.environ_entry*, %struct.environ_entry** %5, align 8
  %12 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free(i32* %13)
  %15 = load %struct.environ_entry*, %struct.environ_entry** %5, align 8
  %16 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %29

17:                                               ; preds = %2
  %18 = call %struct.environ_entry* @xmalloc(i32 16)
  store %struct.environ_entry* %18, %struct.environ_entry** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @xstrdup(i8* %19)
  %21 = load %struct.environ_entry*, %struct.environ_entry** %5, align 8
  %22 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.environ_entry*, %struct.environ_entry** %5, align 8
  %24 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @environ, align 4
  %26 = load %struct.environ*, %struct.environ** %3, align 8
  %27 = load %struct.environ_entry*, %struct.environ_entry** %5, align 8
  %28 = call i32 @RB_INSERT(i32 %25, %struct.environ* %26, %struct.environ_entry* %27)
  br label %29

29:                                               ; preds = %17, %10
  ret void
}

declare dso_local %struct.environ_entry* @environ_find(%struct.environ*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.environ_entry* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @RB_INSERT(i32, %struct.environ*, %struct.environ_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
