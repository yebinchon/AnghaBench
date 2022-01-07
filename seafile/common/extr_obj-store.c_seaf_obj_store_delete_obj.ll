; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_delete_obj.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_delete_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SeafObjStore = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { void (%struct.TYPE_3__*, i8*, i32, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seaf_obj_store_delete_obj(%struct.SeafObjStore* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.SeafObjStore*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.SeafObjStore* %0, %struct.SeafObjStore** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.SeafObjStore*, %struct.SeafObjStore** %5, align 8
  %11 = getelementptr inbounds %struct.SeafObjStore, %struct.SeafObjStore* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @is_uuid_valid(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @is_object_id_valid(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %19, %15, %4
  br label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load void (%struct.TYPE_3__*, i8*, i32, i8*)*, void (%struct.TYPE_3__*, i8*, i32, i8*)** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %8, align 8
  call void %30(%struct.TYPE_3__* %31, i8* %32, i32 %33, i8* %34)
  br label %35

35:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @is_uuid_valid(i8*) #1

declare dso_local i32 @is_object_id_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
