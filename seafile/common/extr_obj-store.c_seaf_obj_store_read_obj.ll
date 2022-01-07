; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_read_obj.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-store.c_seaf_obj_store_read_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SeafObjStore = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i8*, i32, i8*, i8**, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_obj_store_read_obj(%struct.SeafObjStore* %0, i8* %1, i32 %2, i8* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.SeafObjStore*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store %struct.SeafObjStore* %0, %struct.SeafObjStore** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.SeafObjStore*, %struct.SeafObjStore** %8, align 8
  %16 = getelementptr inbounds %struct.SeafObjStore, %struct.SeafObjStore* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %14, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @is_uuid_valid(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @is_object_id_valid(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %24, %20, %6
  store i32 -1, i32* %7, align 4
  br label %43

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_3__*, i8*, i32, i8*, i8**, i32*)*, i32 (%struct.TYPE_3__*, i8*, i32, i8*, i8**, i32*)** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i8**, i8*** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 %35(%struct.TYPE_3__* %36, i8* %37, i32 %38, i8* %39, i8** %40, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %32, %31
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @is_uuid_valid(i8*) #1

declare dso_local i32 @is_object_id_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
