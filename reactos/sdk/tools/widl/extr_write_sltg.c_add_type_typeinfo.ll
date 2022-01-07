; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_type_typeinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_type_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"add_type_typeinfo: adding %s, type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"add_type_typeinfo: unhandled type %d for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_typelib*, %struct.TYPE_9__*)* @add_type_typeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_type_typeinfo(%struct.sltg_typelib* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.sltg_typelib*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @type_get_type(%struct.TYPE_9__* %8)
  %10 = call i32 @chat(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @type_get_type(%struct.TYPE_9__* %11)
  switch i32 %12, label %34 [
    i32 131, label %13
    i32 129, label %17
    i32 132, label %21
    i32 128, label %25
    i32 133, label %29
    i32 134, label %33
    i32 130, label %33
  ]

13:                                               ; preds = %2
  %14 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call i32 @add_interface_typeinfo(%struct.sltg_typelib* %14, %struct.TYPE_9__* %15)
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @add_structure_typeinfo(%struct.sltg_typelib* %18, %struct.TYPE_9__* %19)
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = call i32 @add_enum_typeinfo(%struct.sltg_typelib* %22, %struct.TYPE_9__* %23)
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i32 @add_union_typeinfo(%struct.sltg_typelib* %26, %struct.TYPE_9__* %27)
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i32 @add_coclass_typeinfo(%struct.sltg_typelib* %30, %struct.TYPE_9__* %31)
  br label %41

33:                                               ; preds = %2, %2
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i32 @type_get_type(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %39)
  br label %41

41:                                               ; preds = %34, %33, %29, %25, %21, %17, %13
  ret void
}

declare dso_local i32 @chat(i8*, i8*, i32) #1

declare dso_local i32 @type_get_type(%struct.TYPE_9__*) #1

declare dso_local i32 @add_interface_typeinfo(%struct.sltg_typelib*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_structure_typeinfo(%struct.sltg_typelib*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_enum_typeinfo(%struct.sltg_typelib*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_union_typeinfo(%struct.sltg_typelib*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_coclass_typeinfo(%struct.sltg_typelib*, %struct.TYPE_9__*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
