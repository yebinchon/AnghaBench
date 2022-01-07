; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_SLTG_ReadLibBlk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_SLTG_ReadLibBlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SLTG_LIBBLK_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"libblk magic = %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"LibBlk.res06 = %04x. Assumung string and skipping\0A\00", align 1
@SUBLANG_NEUTRAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @SLTG_ReadLibBlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SLTG_ReadLibBlk(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @SLTG_LIBBLK_MAGIC, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %3, align 4
  br label %133

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %22, 65535
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 11
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = call i32 @SLTG_ReadString(i8* %34, i32* %36, %struct.TYPE_4__* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 10
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = call i32 @SLTG_ReadString(i8* %42, i32* %44, %struct.TYPE_4__* %45)
  %47 = load i8*, i8** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @get_ptr_size(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @SUBLANGID(i32 %72)
  %74 = load i64, i64* @SUBLANG_NEUTRAL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %31
  %77 = load i8*, i8** %6, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PRIMARYLANGID(i32 %79)
  %81 = call i32 @MAKELANGID(i32 %80, i32 0)
  %82 = call i32 @MAKELCID(i32 %81, i32 0)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 8
  store i32 %82, i32* %86, align 4
  br label %92

87:                                               ; preds = %31
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 7
  store i32 0, i32* %89, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %76
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %94, i8** %6, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  store i8* %96, i8** %6, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  store i8* %110, i8** %6, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %117, i8** %6, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i8*, i8** %6, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = call i32 @TLB_append_guid(i32* %119, i32* %121, i32 -2)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  store i8* %126, i8** %6, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %92, %14
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @SLTG_ReadString(i8*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @get_ptr_size(i32) #1

declare dso_local i64 @SUBLANGID(i32) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @PRIMARYLANGID(i32) #1

declare dso_local i32 @TLB_append_guid(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
