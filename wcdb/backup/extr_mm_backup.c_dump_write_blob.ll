; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_write_blob.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_write_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMBAK_TAG_LARGE_DATA = common dso_local global i32 0, align 4
@MMBAK_TAG_BIND_TEXT = common dso_local global i64 0, align 8
@MMBAK_TAG_BIND_BLOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*, i32)* @dump_write_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_write_blob(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 65536
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, -65536
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = ashr i32 %26, 16
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @MMBAK_TAG_LARGE_DATA, align 4
  %30 = call i32 @dump_write_byte(i32* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @dump_write_short(i32* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @dump_write_stream(i32* %36, i8* %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %87

45:                                               ; preds = %23
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %45, %20
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @MMBAK_TAG_BIND_TEXT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @MMBAK_TAG_BIND_BLOB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %56
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @dump_write_byte_byte(i32* %65, i64 %67, i64 %69)
  store i32 %70, i32* %11, align 4
  br label %76

71:                                               ; preds = %60, %53
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dump_write_byte_short(i32* %72, i64 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %71, %64
  %77 = load i32*, i32** %6, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dump_write_stream(i32* %77, i8* %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %87

86:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %85, %44
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dump_write_byte(i32*, i32) #1

declare dso_local i32 @dump_write_short(i32*, i32) #1

declare dso_local i32 @dump_write_stream(i32*, i8*, i32) #1

declare dso_local i32 @dump_write_byte_byte(i32*, i64, i64) #1

declare dso_local i32 @dump_write_byte_short(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
