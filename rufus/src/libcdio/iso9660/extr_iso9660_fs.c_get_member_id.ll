; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_get_member_id.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c_get_member_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Memory allocation error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i8*, i8*, i64)* @get_member_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_member_id(%struct.TYPE_3__* %0, i8** %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = load i8**, i8*** %8, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %6, align 4
  br label %76

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = add i64 %19, 1
  %21 = call i8* @calloc(i64 %20, i32 1)
  %22 = load i8**, i8*** %8, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call i32 @cdio_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %76

28:                                               ; preds = %18
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  store i32 1, i32* %13, align 4
  %33 = load i64, i64* %11, align 8
  %34 = sub i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %62, %28
  %37 = load i32, i32* %12, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %62

51:                                               ; preds = %42, %39
  store i32 0, i32* %13, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %56, i8* %61, align 1
  br label %62

62:                                               ; preds = %51, %50
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  br label %36

65:                                               ; preds = %36
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8**, i8*** %8, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8**, i8*** %8, align 8
  store i8* null, i8** %74, align 8
  store i32 0, i32* %6, align 4
  br label %76

75:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %70, %26, %16
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @cdio_warn(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
