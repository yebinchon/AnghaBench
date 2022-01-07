; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_GetObject_Function.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_GetObject_Function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASF_Object_Function_entry = type { i32 }

@ASF_Object_Function = common dso_local global %struct.ASF_Object_Function_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ASF_Object_Function_entry* (i32*)* @ASF_GetObject_Function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ASF_Object_Function_entry* @ASF_GetObject_Function(i32* %0) #0 {
  %2 = alloca %struct.ASF_Object_Function_entry*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.ASF_Object_Function_entry*, %struct.ASF_Object_Function_entry** @ASF_Object_Function, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.ASF_Object_Function_entry* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.ASF_Object_Function_entry*, %struct.ASF_Object_Function_entry** @ASF_Object_Function, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.ASF_Object_Function_entry, %struct.ASF_Object_Function_entry* %11, i64 %12
  %14 = getelementptr inbounds %struct.ASF_Object_Function_entry, %struct.ASF_Object_Function_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @guidcmp(i32 %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load %struct.ASF_Object_Function_entry*, %struct.ASF_Object_Function_entry** @ASF_Object_Function, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.ASF_Object_Function_entry, %struct.ASF_Object_Function_entry* %20, i64 %21
  store %struct.ASF_Object_Function_entry* %22, %struct.ASF_Object_Function_entry** %2, align 8
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %5

27:                                               ; preds = %5
  store %struct.ASF_Object_Function_entry* null, %struct.ASF_Object_Function_entry** %2, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.ASF_Object_Function_entry*, %struct.ASF_Object_Function_entry** %2, align 8
  ret %struct.ASF_Object_Function_entry* %29
}

declare dso_local i64 @ARRAY_SIZE(%struct.ASF_Object_Function_entry*) #1

declare dso_local i64 @guidcmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
