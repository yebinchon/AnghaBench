; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_find_ea_index.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_find_ea_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ea_name_index = type { i32, i64 }

@ea_names = common dso_local global %struct.ea_name_index* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*)* @find_ea_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ea_index(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ea_name_index*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ea_name_index*, %struct.ea_name_index** @ea_names, align 8
  store %struct.ea_name_index* %9, %struct.ea_name_index** %8, align 8
  br label %10

10:                                               ; preds = %40, %3
  %11 = load %struct.ea_name_index*, %struct.ea_name_index** %8, align 8
  %12 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.ea_name_index*, %struct.ea_name_index** %8, align 8
  %18 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ea_name_index*, %struct.ea_name_index** %8, align 8
  %21 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @strlen(i64 %22)
  %24 = call i64 @strncmp(i8* %16, i64 %19, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.ea_name_index*, %struct.ea_name_index** %8, align 8
  %29 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @strlen(i64 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.ea_name_index*, %struct.ea_name_index** %8, align 8
  %36 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %4, align 4
  br label %44

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ea_name_index*, %struct.ea_name_index** %8, align 8
  %42 = getelementptr inbounds %struct.ea_name_index, %struct.ea_name_index* %41, i32 1
  store %struct.ea_name_index* %42, %struct.ea_name_index** %8, align 8
  br label %10

43:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @strncmp(i8*, i64, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
