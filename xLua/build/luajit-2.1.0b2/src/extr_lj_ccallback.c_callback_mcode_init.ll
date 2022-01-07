; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ccallback.c_callback_mcode_init.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ccallback.c_callback_mcode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lj_vm_ffi_callback = common dso_local global i64 0, align 8
@CALLBACK_MAX_SLOT = common dso_local global i32 0, align 4
@XI_MOVrib = common dso_local global i32 0, align 4
@RID_EAX = common dso_local global i32 0, align 4
@XI_PUSH = common dso_local global i32 0, align 4
@RID_EBP = common dso_local global i32 0, align 4
@XI_MOVri = common dso_local global i32 0, align 4
@XI_JMP = common dso_local global i32 0, align 4
@XI_JMPs = common dso_local global i32 0, align 4
@CALLBACK_MCODE_SIZE = common dso_local global i32 0, align 4
@XI_GROUP5 = common dso_local global i32 0, align 4
@XM_OFS0 = common dso_local global i32 0, align 4
@XOg_JMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**)* @callback_mcode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callback_mcode_init(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  store i8** %8, i8*** %5, align 8
  %9 = load i64, i64* @lj_vm_ffi_callback, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %105, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CALLBACK_MAX_SLOT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load i32, i32* @XI_MOVrib, align 4
  %18 = load i32, i32* @RID_EAX, align 4
  %19 = or i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %5, align 8
  store i8* %21, i8** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 31
  %31 = icmp eq i32 %30, 31
  br i1 %31, label %37, label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @CALLBACK_MAX_SLOT, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %32, %16
  %38 = load i32, i32* @XI_PUSH, align 4
  %39 = load i32, i32* @RID_EBP, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  %45 = load i32, i32* @XI_MOVrib, align 4
  %46 = load i32, i32* @RID_EAX, align 4
  %47 = add nsw i32 %46, 4
  %48 = or i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  store i8* %56, i8** %57, align 8
  %59 = load i32, i32* @XI_MOVri, align 4
  %60 = load i32, i32* @RID_EBP, align 4
  %61 = or i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %5, align 8
  store i8* %63, i8** %64, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @i32ptr(i32* %66)
  %68 = load i8**, i8*** %5, align 8
  %69 = bitcast i8** %68 to i32*
  store i32 %67, i32* %69, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 4
  store i8** %71, i8*** %5, align 8
  %72 = load i32, i32* @XI_JMP, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %5, align 8
  store i8* %74, i8** %75, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 4
  %80 = ptrtoint i8** %77 to i64
  %81 = ptrtoint i8** %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = load i8**, i8*** %5, align 8
  %86 = bitcast i8** %85 to i32*
  store i32 %84, i32* %86, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 4
  store i8** %88, i8*** %5, align 8
  br label %104

89:                                               ; preds = %32
  %90 = load i32, i32* @XI_JMPs, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %5, align 8
  store i8* %92, i8** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 31
  %97 = sub nsw i32 31, %96
  %98 = mul nsw i32 4, %97
  %99 = sub nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i32 1
  store i8** %103, i8*** %5, align 8
  store i8* %101, i8** %102, align 8
  br label %104

104:                                              ; preds = %89, %37
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %12

108:                                              ; preds = %12
  %109 = load i8**, i8*** %5, align 8
  %110 = load i8**, i8*** %4, align 8
  %111 = ptrtoint i8** %109 to i64
  %112 = ptrtoint i8** %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 8
  %115 = load i32, i32* @CALLBACK_MCODE_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp sle i64 %114, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @lua_assert(i32 %118)
  ret void
}

declare dso_local i32 @i32ptr(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
