; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_id_to_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_id_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s/%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*, i8*, i32)* @id_to_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @id_to_path(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @SEAF_PATH_MAX, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @memcpy(i8* %25, i8* %26, i32 2)
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8 47, i8* %29, align 1
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call i32 @memcpy(i8* %32, i8* %34, i32 39)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
