; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_os.c_sqliterkOSRead.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_os.c_sqliterkOSRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@SQLITERK_IOERR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@SQLITERK_SHORT_READ = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkOSRead(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %22, i32* %5, align 4
  br label %91

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @lseek(i64 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i64, i64* @errno, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @SQLITERK_IOERR, align 4
  store i32 %36, i32* %5, align 4
  br label %91

37:                                               ; preds = %23
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %80, %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @read(i64 %43, i8* %44, i64 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EINTR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i64 1, i64* %13, align 8
  br label %74

54:                                               ; preds = %49
  %55 = load i64, i64* @errno, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @SQLITERK_IOERR, align 4
  store i32 %58, i32* %5, align 4
  br label %91

59:                                               ; preds = %40
  %60 = load i64, i64* %13, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %62, %59
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i64, i64* %13, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %78, 0
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i1 [ false, %74 ], [ %79, %77 ]
  br i1 %81, label %40, label %82

82:                                               ; preds = %80
  %83 = load i64, i64* %12, align 8
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @SQLITERK_SHORT_READ, align 4
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %87, %54, %32, %21
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i64 @read(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
