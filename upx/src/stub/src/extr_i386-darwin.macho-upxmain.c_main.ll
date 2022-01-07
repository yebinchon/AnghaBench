; ModuleID = '/home/carl/AnghaBench/upx/src/stub/src/extr_i386-darwin.macho-upxmain.c_main.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/src/extr_i386-darwin.macho-upxmain.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.l_info = type { i32 }

@LC_SEGMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"__LINKEDIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [16384 x i8], align 16
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call { i32, i8** } asm "movl 1*4(%ebp),$0; lea 2*4(%ebp),$1", "=r,=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %18 = extractvalue { i32, i8** } %17, 0
  %19 = extractvalue { i32, i8** } %17, 1
  store i32 %18, i32* %4, align 4
  store i8** %19, i8*** %5, align 8
  store %struct.TYPE_7__* inttoptr (i64 and (i64 ptrtoint (i32 (i32, i8**)* @main to i64), i64 -4096) to %struct.TYPE_7__*), %struct.TYPE_7__** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 1
  %22 = bitcast %struct.TYPE_7__* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %83, %2
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %23
  %30 = load i64, i64* @LC_SEGMENT, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = bitcast %struct.TYPE_8__* %36 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %13, align 8
  %38 = load i64, i64* bitcast (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 2) to i64*), align 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %35
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 2, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %8, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i16*
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i64
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %9, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %14, align 8
  br label %67

67:                                               ; preds = %74, %46
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 -1
  store i32* %69, i32** %14, align 8
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %11, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %67

75:                                               ; preds = %67
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 0, %76
  %78 = load i32*, i32** %14, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = getelementptr inbounds i8, i8* %79, i64 %77
  store i8* %80, i8** %10, align 8
  br label %94

81:                                               ; preds = %35
  br label %82

82:                                               ; preds = %81, %29
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = bitcast %struct.TYPE_8__* %89 to i8*
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = bitcast i8* %92 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %7, align 8
  br label %23

94:                                               ; preds = %75, %23
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to %struct.l_info*
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds [16384 x i8], [16384 x i8]* %15, i64 0, i64 0
  %99 = bitcast i8* %98 to %struct.TYPE_7__*
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 -2
  %104 = bitcast i8** %103 to %struct.TYPE_7__**
  %105 = call i32 @upx_main(%struct.l_info* %96, i64 %97, %struct.TYPE_7__* %99, i32 16384, i32* %100, i32* %101, %struct.TYPE_7__** %104)
  store i32 %105, i32* %16, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @munmap(i8* %106, i64 %107)
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 -1
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i8**, i8*** %5, align 8
  call void asm sideeffect "lea -2*4($1),%esp; jmp *$0", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %114, i8** %115) #3, !srcloc !3
  ret i32 0
}

declare dso_local i32 @upx_main(%struct.l_info*, i64, %struct.TYPE_7__*, i32, i32*, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 827}
!3 = !{i32 2094}
