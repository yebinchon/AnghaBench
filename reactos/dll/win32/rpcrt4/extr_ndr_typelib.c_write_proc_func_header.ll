; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_proc_func_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_proc_func_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FC_AUTO_HANDLE = common dso_local global i32 0, align 4
@Oi_OBJECT_PROC = common dso_local global i32 0, align 4
@Oi_OBJ_USE_V2_INTERPRETER = common dso_local global i32 0, align 4
@FC_FLOAT = common dso_local global i8 0, align 1
@FC_DOUBLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i64, i8*, i64*)* @write_proc_func_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_proc_func_header(i32* %0, %struct.TYPE_6__* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  store i16 16, i16* %11, align 2
  store i16 0, i16* %12, align 2
  %15 = load i8*, i8** %9, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @FC_AUTO_HANDLE, align 4
  %19 = call i32 @WRITE_CHAR(i8* %15, i64 %17, i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @Oi_OBJECT_PROC, align 4
  %24 = load i32, i32* @Oi_OBJ_USE_V2_INTERPRETER, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @WRITE_CHAR(i8* %20, i64 %22, i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i16
  %32 = call i32 @WRITE_SHORT(i8* %27, i64 %29, i16 zeroext %31)
  store i64 0, i64* %14, align 8
  br label %33

33:                                               ; preds = %52, %5
  %34 = load i64, i64* %14, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i64 @get_stack_size(i32* %40, %struct.TYPE_7__* %46)
  %48 = load i16, i16* %11, align 2
  %49 = zext i16 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i16
  store i16 %51, i16* %11, align 2
  br label %52

52:                                               ; preds = %39
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %14, align 8
  br label %33

55:                                               ; preds = %33
  %56 = load i8*, i8** %9, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i16, i16* %11, align 2
  %60 = call i32 @WRITE_SHORT(i8* %56, i64 %58, i16 zeroext %59)
  %61 = load i8*, i8** %9, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @WRITE_SHORT(i8* %61, i64 %63, i16 zeroext 0)
  %65 = load i8*, i8** %9, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @WRITE_SHORT(i8* %65, i64 %67, i16 zeroext 0)
  %69 = load i8*, i8** %9, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @WRITE_CHAR(i8* %69, i64 %71, i32 71)
  %73 = load i8*, i8** %9, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  %80 = trunc i64 %79 to i32
  %81 = call i32 @WRITE_CHAR(i8* %73, i64 %75, i32 %80)
  %82 = load i8*, i8** %9, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @WRITE_CHAR(i8* %82, i64 %84, i32 10)
  %86 = load i8*, i8** %9, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @WRITE_CHAR(i8* %86, i64 %88, i32 0)
  %90 = load i8*, i8** %9, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @WRITE_SHORT(i8* %90, i64 %92, i16 zeroext 0)
  %94 = load i8*, i8** %9, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @WRITE_SHORT(i8* %94, i64 %96, i16 zeroext 0)
  %98 = load i8*, i8** %9, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @WRITE_SHORT(i8* %98, i64 %100, i16 zeroext 0)
  store i64 0, i64* %14, align 8
  br label %102

102:                                              ; preds = %156, %55
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i64, i64* %14, align 8
  %110 = icmp ult i64 %109, 3
  br label %111

111:                                              ; preds = %108, %102
  %112 = phi i1 [ false, %102 ], [ %110, %108 ]
  br i1 %112, label %113, label %159

113:                                              ; preds = %111
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call zeroext i8 @get_base_type(i32 %121)
  store i8 %122, i8* %13, align 1
  %123 = load i8, i8* %13, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @FC_FLOAT, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %113
  %129 = load i64, i64* %14, align 8
  %130 = add i64 %129, 1
  %131 = mul i64 %130, 2
  %132 = trunc i64 %131 to i32
  %133 = shl i32 1, %132
  %134 = load i16, i16* %12, align 2
  %135 = zext i16 %134 to i32
  %136 = or i32 %135, %133
  %137 = trunc i32 %136 to i16
  store i16 %137, i16* %12, align 2
  br label %155

138:                                              ; preds = %113
  %139 = load i8, i8* %13, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* @FC_DOUBLE, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  %147 = mul i64 %146, 2
  %148 = trunc i64 %147 to i32
  %149 = shl i32 2, %148
  %150 = load i16, i16* %12, align 2
  %151 = zext i16 %150 to i32
  %152 = or i32 %151, %149
  %153 = trunc i32 %152 to i16
  store i16 %153, i16* %12, align 2
  br label %154

154:                                              ; preds = %144, %138
  br label %155

155:                                              ; preds = %154, %128
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %14, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %14, align 8
  br label %102

159:                                              ; preds = %111
  %160 = load i8*, i8** %9, align 8
  %161 = load i64*, i64** %10, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i16, i16* %12, align 2
  %164 = call i32 @WRITE_SHORT(i8* %160, i64 %162, i16 zeroext %163)
  ret void
}

declare dso_local i32 @WRITE_CHAR(i8*, i64, i32) #1

declare dso_local i32 @WRITE_SHORT(i8*, i64, i16 zeroext) #1

declare dso_local i64 @get_stack_size(i32*, %struct.TYPE_7__*) #1

declare dso_local zeroext i8 @get_base_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
