; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_array_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_array_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@FC_LGFARRAY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"complex arrays not implemented\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@FC_EMBEDDED_COMPLEX = common dso_local global i8 0, align 1
@FC_PAD = common dso_local global i8 0, align 1
@FC_END = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64*, %struct.TYPE_8__*)* @write_array_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_array_tfs(i32* %0, i8* %1, i64* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = call zeroext i8 @get_array_fc(i32* %15, %struct.TYPE_9__* %17)
  store i8 %18, i8* %9, align 1
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = call i32 @type_memsize(i32* %19, %struct.TYPE_9__* %21)
  store i32 %22, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @FC_LGFARRAY, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call zeroext i8 @get_base_type(i32 %34)
  store i8 %35, i8* %11, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i64 @write_type_tfs(i32* %38, i8* %39, i64* %40, %struct.TYPE_9__* %42, i32 %43, i32 %44)
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %37, %30
  store i64 0, i64* %14, align 8
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %14, align 8
  br label %47

66:                                               ; preds = %47
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i8, i8* @FC_LGFARRAY, align 1
  %73 = call i32 @WRITE_CHAR(i8* %69, i64 %71, i8 zeroext %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @WRITE_CHAR(i8* %74, i64 %76, i8 zeroext 0)
  %78 = load i8*, i8** %6, align 8
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @WRITE_INT(i8* %78, i64 %80, i32 %81)
  %83 = load i8, i8* %11, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %66
  %86 = load i8*, i8** %6, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i8, i8* %11, align 1
  %90 = call i32 @WRITE_CHAR(i8* %86, i64 %88, i8 zeroext %89)
  br label %114

91:                                               ; preds = %66
  %92 = load i8*, i8** %6, align 8
  %93 = load i64*, i64** %7, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load i8, i8* @FC_EMBEDDED_COMPLEX, align 1
  %96 = call i32 @WRITE_CHAR(i8* %92, i64 %94, i8 zeroext %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i64*, i64** %7, align 8
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @WRITE_CHAR(i8* %97, i64 %99, i8 zeroext 0)
  %101 = load i8*, i8** %6, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %104, %106
  %108 = call i32 @WRITE_SHORT(i8* %101, i64 %103, i64 %107)
  %109 = load i8*, i8** %6, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i8, i8* @FC_PAD, align 1
  %113 = call i32 @WRITE_CHAR(i8* %109, i64 %111, i8 zeroext %112)
  br label %114

114:                                              ; preds = %91, %85
  %115 = load i8*, i8** %6, align 8
  %116 = load i64*, i64** %7, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i8, i8* @FC_END, align 1
  %119 = call i32 @WRITE_CHAR(i8* %115, i64 %117, i8 zeroext %118)
  %120 = load i64, i64* %13, align 8
  ret i64 %120
}

declare dso_local zeroext i8 @get_array_fc(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @type_memsize(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local zeroext i8 @get_base_type(i32) #1

declare dso_local i64 @write_type_tfs(i32*, i8*, i64*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @WRITE_CHAR(i8*, i64, i8 zeroext) #1

declare dso_local i32 @WRITE_INT(i8*, i64, i32) #1

declare dso_local i32 @WRITE_SHORT(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
