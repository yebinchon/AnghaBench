; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_pool.c_dump_ddt_stat.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_pool.c_dump_ddt_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%6s   %6s   %5s   %5s   %5s   %6s   %5s   %5s   %5s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @dump_ddt_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ddt_stat(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %85

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %33 = call i32 @zfs_nicenum(i64 %31, i8* %32, i32 6)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %39 = call i32 @zfs_nicenum(i64 %37, i8* %38, i32 6)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %44 = call i32 @zfs_nicebytes(i32 %42, i8* %43, i32 6)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %49 = call i32 @zfs_nicebytes(i32 %47, i8* %48, i32 6)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %54 = call i32 @zfs_nicebytes(i32 %52, i8* %53, i32 6)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %59 = call i32 @zfs_nicenum(i64 %57, i8* %58, i32 6)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %64 = call i32 @zfs_nicebytes(i32 %62, i8* %63, i32 6)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %69 = call i32 @zfs_nicebytes(i32 %67, i8* %68, i32 6)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %74 = call i32 @zfs_nicebytes(i32 %72, i8* %73, i32 6)
  %75 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %76 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %77 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %79 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %80 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %81 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %82 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %83 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %84 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %75, i8* %76, i8* %77, i8* %78, i8* %79, i8* %80, i8* %81, i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @zfs_nicenum(i64, i8*, i32) #1

declare dso_local i32 @zfs_nicebytes(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
