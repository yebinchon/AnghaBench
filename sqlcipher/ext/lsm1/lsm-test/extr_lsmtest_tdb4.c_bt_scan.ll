; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bt_scan.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@SQLITE4_OK = common dso_local global i32 0, align 4
@BT_CONTROL_FAST_INSERT_OP = common dso_local global i32 0, align 4
@BT_SEEK_LE = common dso_local global i32 0, align 4
@BT_SEEK_GE = common dso_local global i32 0, align 4
@SQLITE4_INEXACT = common dso_local global i32 0, align 4
@SQLITE4_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32, i8*, i32, void (i8*, i8*, i32, i8*, i32)*)* @bt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_scan(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, void (i8*, i8*, i32, i8*, i32)* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (i8*, i8*, i32, i8*, i32)*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store void (i8*, i8*, i32, i8*, i32)* %7, void (i8*, i8*, i32, i8*, i32)** %16, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %17, align 8
  store i32* null, i32** %18, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %32 = call i32 @btMinTransaction(%struct.TYPE_4__* %31, i32 1, i32* %20)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* @SQLITE4_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BT_CONTROL_FAST_INSERT_OP, align 4
  %46 = call i32 @sqlite4BtControl(i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sqlite4BtCsrOpen(i32 %50, i32 0, i32** %18)
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %47, %8
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* @SQLITE4_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %177

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %18, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @BT_SEEK_LE, align 4
  %67 = call i32 @sqlite4BtCsrSeek(i32* %63, i8* %64, i32 %65, i32 %66)
  store i32 %67, i32* %19, align 4
  br label %71

68:                                               ; preds = %59
  %69 = load i32*, i32** %18, align 8
  %70 = call i32 @sqlite4BtCsrLast(i32* %69)
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %68, %62
  br label %78

72:                                               ; preds = %56
  %73 = load i32*, i32** %18, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @BT_SEEK_GE, align 4
  %77 = call i32 @sqlite4BtCsrSeek(i32* %73, i8* %74, i32 %75, i32 %76)
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @SQLITE4_INEXACT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %83, i32* %19, align 4
  br label %84

84:                                               ; preds = %82, %78
  br label %85

85:                                               ; preds = %167, %84
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @SQLITE4_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %168

89:                                               ; preds = %85
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  store i8* null, i8** %23, align 8
  store i32 0, i32* %24, align 4
  %90 = load i32*, i32** %18, align 8
  %91 = call i32 @sqlite4BtCsrKey(i32* %90, i8** %21, i32* %22)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @SQLITE4_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %18, align 8
  %97 = call i32 @sqlite4BtCsrData(i32* %96, i32 0, i32 -1, i8** %23, i32* %24)
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @SQLITE4_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %168

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %103
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @MIN(i32 %110, i32 %111)
  store i32 %112, i32* %26, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %21, align 8
  %115 = load i32, i32* %26, align 4
  %116 = call i32 @memcmp(i8* %113, i8* %114, i32 %115)
  store i32 %116, i32* %25, align 4
  %117 = load i32, i32* %25, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %25, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %109
  br label %168

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127, %106
  br label %152

129:                                              ; preds = %103
  %130 = load i8*, i8** %14, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @MIN(i32 %133, i32 %134)
  store i32 %135, i32* %28, align 4
  %136 = load i8*, i8** %14, align 8
  %137 = load i8*, i8** %21, align 8
  %138 = load i32, i32* %28, align 4
  %139 = call i32 @memcmp(i8* %136, i8* %137, i32 %138)
  store i32 %139, i32* %27, align 4
  %140 = load i32, i32* %27, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %27, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %132
  br label %168

150:                                              ; preds = %145, %142
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %128
  %153 = load void (i8*, i8*, i32, i8*, i32)*, void (i8*, i8*, i32, i8*, i32)** %16, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i8*, i8** %21, align 8
  %156 = load i32, i32* %22, align 4
  %157 = load i8*, i8** %23, align 8
  %158 = load i32, i32* %24, align 4
  call void %153(i8* %154, i8* %155, i32 %156, i8* %157, i32 %158)
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @sqlite4BtCsrPrev(i32* %162)
  store i32 %163, i32* %19, align 4
  br label %167

164:                                              ; preds = %152
  %165 = load i32*, i32** %18, align 8
  %166 = call i32 @sqlite4BtCsrNext(i32* %165)
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %164, %161
  br label %85

168:                                              ; preds = %149, %126, %102, %85
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* @SQLITE4_NOTFOUND, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* @SQLITE4_OK, align 4
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %172, %168
  %175 = load i32*, i32** %18, align 8
  %176 = call i32 @sqlite4BtCsrClose(i32* %175)
  br label %177

177:                                              ; preds = %174, %52
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @btRestoreTransaction(%struct.TYPE_4__* %178, i32 %179, i32 %180)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  ret i32 %182
}

declare dso_local i32 @btMinTransaction(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @sqlite4BtControl(i32, i32, i32) #1

declare dso_local i32 @sqlite4BtCsrOpen(i32, i32, i32**) #1

declare dso_local i32 @sqlite4BtCsrSeek(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite4BtCsrLast(i32*) #1

declare dso_local i32 @sqlite4BtCsrKey(i32*, i8**, i32*) #1

declare dso_local i32 @sqlite4BtCsrData(i32*, i32, i32, i8**, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite4BtCsrPrev(i32*) #1

declare dso_local i32 @sqlite4BtCsrNext(i32*) #1

declare dso_local i32 @sqlite4BtCsrClose(i32*) #1

declare dso_local i32 @btRestoreTransaction(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
