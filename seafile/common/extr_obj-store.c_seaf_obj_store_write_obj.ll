; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_write_obj.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_write_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SeafObjStore = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i8*, i32, i8*, i8*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_obj_store_write_obj(%struct.SeafObjStore* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.SeafObjStore*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  store %struct.SeafObjStore* %0, %struct.SeafObjStore** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.SeafObjStore*, %struct.SeafObjStore** %9, align 8
  %18 = getelementptr inbounds %struct.SeafObjStore, %struct.SeafObjStore* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %16, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %7
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @is_uuid_valid(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @is_object_id_valid(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %26, %22, %7
  store i32 -1, i32* %8, align 4
  br label %46

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_3__*, i8*, i32, i8*, i8*, i32, i32)*, i32 (%struct.TYPE_3__*, i8*, i32, i8*, i8*, i32, i32)** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 %37(%struct.TYPE_3__* %38, i8* %39, i32 %40, i8* %41, i8* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %34, %33
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @is_uuid_valid(i8*) #1

declare dso_local i32 @is_object_id_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
