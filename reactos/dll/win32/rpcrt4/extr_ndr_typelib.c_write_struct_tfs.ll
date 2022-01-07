; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_struct_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_struct_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FC_STRUCT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c"fc %02x not implemented\0A\00", align 1
@FC_PAD = common dso_local global i32 0, align 4
@FC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64*, %struct.TYPE_4__*)* @write_struct_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_struct_tfs(i32* %0, i8* %1, i64* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = call zeroext i8 @get_struct_fc(i32* %11, %struct.TYPE_4__* %12)
  store i8 %13, i8* %9, align 1
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @FC_STRUCT, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8, i8* %9, align 1
  %23 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 zeroext %22)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i8, i8* @FC_STRUCT, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 @WRITE_CHAR(i8* %25, i64 %27, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @WRITE_CHAR(i8* %31, i64 %33, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WRITE_SHORT(i8* %39, i64 %41, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @FC_PAD, align 4
  %50 = call i32 @WRITE_CHAR(i8* %46, i64 %48, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @FC_END, align 4
  %55 = call i32 @WRITE_CHAR(i8* %51, i64 %53, i32 %54)
  %56 = load i64, i64* %10, align 8
  ret i64 %56
}

declare dso_local zeroext i8 @get_struct_fc(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @FIXME(i8*, i8 zeroext) #1

declare dso_local i32 @WRITE_CHAR(i8*, i64, i32) #1

declare dso_local i32 @WRITE_SHORT(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
