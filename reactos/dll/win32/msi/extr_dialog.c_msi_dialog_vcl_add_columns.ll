; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_vcl_add_columns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_vcl_add_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i32 }

@msi_dialog_vcl_add_columns.negative = internal constant [2 x i8] c"-\00", align 1
@szZero = common dso_local global i32 0, align 4
@LVCF_TEXT = common dso_local global i32 0, align 4
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVCF_SUBITEM = common dso_local global i32 0, align 4
@column_keys = common dso_local global i32* null, align 8
@LVM_INSERTCOLUMNW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32*)* @msi_dialog_vcl_add_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_dialog_vcl_add_columns(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @MSI_RecordGetString(i32* %13, i32 10)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %117

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %85, %69, %19
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @strchrW(i32 %21, i8 signext 123)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 5
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %117

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @strchrW(i32 %30, i8 signext 125)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %117

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @msi_alloc(i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %117

46:                                               ; preds = %34
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @lstrcpynW(i8* %47, i32 %49, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %46
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* @szZero, align 4
  %67 = call i32 @strcmpW(i8* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64, %46
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @msi_free(i8* %72)
  br label %20

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @strncmpW(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @msi_dialog_vcl_add_columns.negative, i64 0, i64 0), i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @str_is_number(i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @msi_free(i8* %83)
  br label %117

85:                                               ; preds = %78
  %86 = call i32 @ZeroMemory(%struct.TYPE_6__* %11, i32 24)
  %87 = load i32, i32* @LVCF_TEXT, align 4
  %88 = load i32, i32* @LVCF_WIDTH, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @LVCF_SUBITEM, align 4
  %91 = or i32 %89, %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @atolW(i8* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** @column_keys, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @msi_dialog_get_uitext(i32* %96, i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @LVM_INSERTCOLUMNW, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = ptrtoint %struct.TYPE_6__* %11 to i32
  %111 = call i32 @SendMessageW(i32 %106, i32 %107, i32 %108, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @msi_free(i8* %113)
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @msi_free(i8* %115)
  br label %20

117:                                              ; preds = %18, %33, %45, %82, %27
  ret void
}

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @strchrW(i32, i8 signext) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpynW(i8*, i32, i32) #1

declare dso_local i32 @strcmpW(i8*, i32) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i32 @strncmpW(i8*, i8*, i32) #1

declare dso_local i32 @str_is_number(i8*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @atolW(i8*) #1

declare dso_local i8* @msi_dialog_get_uitext(i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
