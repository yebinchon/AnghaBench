; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AffinityType.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AffinityType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SQLITE_AFF_NUMERIC = common dso_local global i8 0, align 1
@sqlite3UpperToLower = common dso_local global i32* null, align 8
@SQLITE_AFF_TEXT = common dso_local global i8 0, align 1
@SQLITE_AFF_REAL = common dso_local global i8 0, align 1
@SQLITE_AFF_BLOB = common dso_local global i8 0, align 1
@SQLITE_AFF_INTEGER = common dso_local global i8 0, align 1
@COLFLAG_SORTERREF = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @sqlite3AffinityType(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  store i8 %9, i8* %6, align 1
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  br label %14

14:                                               ; preds = %119, %2
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %120

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** @sqlite3UpperToLower, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = and i32 %25, 255
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %21, %29
  store i32 %30, i32* %5, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 1667785074
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  store i8 %36, i8* %6, align 1
  %37 = load i8*, i8** %3, align 8
  store i8* %37, i8** %7, align 8
  br label %119

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 1668050786
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  store i8 %42, i8* %6, align 1
  br label %118

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 1952807028
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i8, i8* @SQLITE_AFF_TEXT, align 1
  store i8 %47, i8* %6, align 1
  br label %117

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 1651273570
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* @SQLITE_AFF_REAL, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57, %51
  %64 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  store i8 %64, i8* %6, align 1
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 40
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %70, %63
  br label %116

73:                                               ; preds = %57, %48
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 1919246700
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8, i8* %6, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i8, i8* @SQLITE_AFF_REAL, align 1
  store i8 %83, i8* %6, align 1
  br label %115

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 1718382433
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i8, i8* %6, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i8, i8* @SQLITE_AFF_REAL, align 1
  store i8 %94, i8* %6, align 1
  br label %114

95:                                               ; preds = %87, %84
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 1685026146
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i8, i8* %6, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i8, i8* @SQLITE_AFF_REAL, align 1
  store i8 %105, i8* %6, align 1
  br label %113

106:                                              ; preds = %98, %95
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, 16777215
  %109 = icmp eq i32 %108, 6909556
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8, i8* @SQLITE_AFF_INTEGER, align 1
  store i8 %111, i8* %6, align 1
  br label %120

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %104
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %82
  br label %116

116:                                              ; preds = %115, %72
  br label %117

117:                                              ; preds = %116, %46
  br label %118

118:                                              ; preds = %117, %41
  br label %119

119:                                              ; preds = %118, %35
  br label %14

120:                                              ; preds = %110, %14
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = icmp ne %struct.TYPE_4__* %121, null
  br i1 %122, label %123, label %164

123:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  %124 = load i8, i8* %6, align 1
  %125 = sext i8 %124 to i32
  %126 = load i8, i8* @SQLITE_AFF_NUMERIC, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %147, %132
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @sqlite3Isdigit(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @sqlite3GetInt32(i8* %145, i32* %8)
  br label %150

147:                                              ; preds = %138
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %7, align 8
  br label %133

150:                                              ; preds = %144, %133
  br label %152

151:                                              ; preds = %129
  store i32 16, i32* %8, align 4
  br label %152

152:                                              ; preds = %151, %150
  br label %153

153:                                              ; preds = %152, %123
  %154 = load i32, i32* %8, align 4
  %155 = sdiv i32 %154, 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp sgt i32 %157, 255
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 255, i32* %8, align 4
  br label %160

160:                                              ; preds = %159, %153
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %120
  %165 = load i8, i8* %6, align 1
  ret i8 %165
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @sqlite3GetInt32(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
