; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_add_type_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_add_type_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"add_entry: unhandled type 0x%x for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @add_type_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_type_typeinfo(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = call i32 @type_get_type(%struct.TYPE_9__* %5)
  switch i32 %6, label %28 [
    i32 131, label %7
    i32 129, label %11
    i32 132, label %15
    i32 128, label %19
    i32 133, label %23
    i32 134, label %27
    i32 130, label %27
    i32 135, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @add_interface_typeinfo(i32* %8, %struct.TYPE_9__* %9)
  br label %35

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @add_structure_typeinfo(i32* %12, %struct.TYPE_9__* %13)
  br label %35

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @add_enum_typeinfo(i32* %16, %struct.TYPE_9__* %17)
  br label %35

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @add_union_typeinfo(i32* %20, %struct.TYPE_9__* %21)
  br label %35

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @add_coclass_typeinfo(i32* %24, %struct.TYPE_9__* %25)
  br label %35

27:                                               ; preds = %2, %2, %2
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 @type_get_type(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %33)
  br label %35

35:                                               ; preds = %28, %27, %23, %19, %15, %11, %7
  ret void
}

declare dso_local i32 @type_get_type(%struct.TYPE_9__*) #1

declare dso_local i32 @add_interface_typeinfo(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_structure_typeinfo(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_enum_typeinfo(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_union_typeinfo(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_coclass_typeinfo(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
